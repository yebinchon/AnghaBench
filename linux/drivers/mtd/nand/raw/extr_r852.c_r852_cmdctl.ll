; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_cmdctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_cmdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i32, i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@R852_CTL_DATA = common dso_local global i32 0, align 4
@R852_CTL_COMMAND = common dso_local global i32 0, align 4
@R852_CTL_ON = common dso_local global i32 0, align 4
@R852_CTL_CARDENABLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@R852_CTL_WRITE = common dso_local global i32 0, align 4
@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@R852_CTL = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @r852_cmdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_cmdctl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r852_device*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.r852_device* @r852_get_dev(i32 %9)
  store %struct.r852_device* %10, %struct.r852_device** %7, align 8
  %11 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %12 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %124

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %16
  %22 = load i32, i32* @R852_CTL_DATA, align 4
  %23 = load i32, i32* @R852_CTL_COMMAND, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @R852_CTL_ON, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @R852_CTL_CARDENABLE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %31 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NAND_ALE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load i32, i32* @R852_CTL_DATA, align 4
  %40 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %41 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %21
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @NAND_CLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @R852_CTL_COMMAND, align 4
  %51 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %52 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NAND_NCE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @R852_CTL_CARDENABLE, align 4
  %62 = load i32, i32* @R852_CTL_ON, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %65 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %75

68:                                               ; preds = %55
  %69 = load i32, i32* @R852_CTL_WRITE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %72 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %60
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @R852_CTL_WRITE, align 4
  %81 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %82 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %75
  %86 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %87 = load i32, i32* @R852_CTL, align 4
  %88 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %89 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @r852_write_reg(%struct.r852_device* %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %85, %16
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %98 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @R852_CTL_COMMAND, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i32, i32* @R852_CTL_WRITE, align 4
  %105 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %106 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %110 = load i32, i32* @R852_CTL, align 4
  %111 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %112 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @r852_write_reg(%struct.r852_device* %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %103, %96, %92
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @NAND_CMD_NONE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %121 = load i32, i32* @R852_DATALINE, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @r852_write_reg(%struct.r852_device* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %15, %119, %115
  ret void
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_by_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_by_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.TYPE_2__, %struct.brcmnand_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmnand_controller = type { i32 }

@CMD_PAGE_READ = common dso_local global i32 0, align 4
@FC_WORDS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@FC_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32, i32, i32*, i32*, i32*)* @brcmnand_read_by_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_read_by_pio(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.brcmnand_host*, align 8
  %16 = alloca %struct.brcmnand_controller*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %21 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %20)
  store %struct.brcmnand_host* %21, %struct.brcmnand_host** %15, align 8
  %22 = load %struct.brcmnand_host*, %struct.brcmnand_host** %15, align 8
  %23 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %22, i32 0, i32 1
  %24 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %23, align 8
  store %struct.brcmnand_controller* %24, %struct.brcmnand_controller** %16, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %26 = call i32 @brcmnand_clear_ecc_addr(%struct.brcmnand_controller* %25)
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %116, %7
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %124

31:                                               ; preds = %27
  %32 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @brcmnand_set_cmd_addr(%struct.mtd_info* %32, i32 %33)
  %35 = load %struct.brcmnand_host*, %struct.brcmnand_host** %15, align 8
  %36 = load i32, i32* @CMD_PAGE_READ, align 4
  %37 = call i32 @brcmnand_send_cmd(%struct.brcmnand_host* %35, i32 %36)
  %38 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %39 = call i32 @brcmnand_waitfunc(%struct.nand_chip* %38)
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @likely(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %31
  %44 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %45 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @brcmnand_soc_data_bus_prepare(i32 %46, i32 0)
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %57, %43
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @FC_WORDS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @brcmnand_read_fc(%struct.brcmnand_controller* %53, i32 %54)
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %12, align 8
  br label %48

62:                                               ; preds = %48
  %63 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %64 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @brcmnand_soc_data_bus_unprepare(i32 %65, i32 0)
  br label %67

67:                                               ; preds = %62, %31
  %68 = load i32*, i32** %13, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = udiv i32 %76, %77
  %79 = load %struct.brcmnand_host*, %struct.brcmnand_host** %15, align 8
  %80 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @read_oob_from_regs(%struct.brcmnand_controller* %71, i32 %72, i32* %73, i32 %78, i32 %82)
  %84 = load i32*, i32** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %13, align 8
  br label %87

87:                                               ; preds = %70, %67
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  %91 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %92 = call i32 @brcmnand_get_uncorrecc_addr(%struct.brcmnand_controller* %91)
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EBADMSG, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %97, %90
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  %106 = call i32 @brcmnand_get_correcc_addr(%struct.brcmnand_controller* %105)
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @EUCLEAN, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  %119 = load i64, i64* @FC_BYTES, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  br label %27

124:                                              ; preds = %27
  %125 = load i32, i32* %19, align 4
  ret i32 %125
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @brcmnand_clear_ecc_addr(%struct.brcmnand_controller*) #1

declare dso_local i32 @brcmnand_set_cmd_addr(%struct.mtd_info*, i32) #1

declare dso_local i32 @brcmnand_send_cmd(%struct.brcmnand_host*, i32) #1

declare dso_local i32 @brcmnand_waitfunc(%struct.nand_chip*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @brcmnand_soc_data_bus_prepare(i32, i32) #1

declare dso_local i32 @brcmnand_read_fc(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @brcmnand_soc_data_bus_unprepare(i32, i32) #1

declare dso_local i32 @read_oob_from_regs(%struct.brcmnand_controller*, i32, i32*, i32, i32) #1

declare dso_local i32 @brcmnand_get_uncorrecc_addr(%struct.brcmnand_controller*) #1

declare dso_local i32 @brcmnand_get_correcc_addr(%struct.brcmnand_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_do_addr_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_do_addr_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.mxc_nand_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mxc_nand_host*, i32, i32)* }

@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @mxc_do_addr_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_do_addr_cycle(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.mxc_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %12 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.mxc_nand_host* %12, %struct.mxc_nand_host** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %17 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %19, align 8
  %21 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 %20(%struct.mxc_nand_host* %21, i32 %23, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 512
  br i1 %31, label %32, label %43

32:                                               ; preds = %15
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %36, align 8
  %38 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = call i32 %37(%struct.mxc_nand_host* %38, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %32, %15
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %140

47:                                               ; preds = %44
  %48 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %49 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %51, align 8
  %53 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = call i32 %52(%struct.mxc_nand_host* %53, i32 %55, i32 0)
  %57 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 512
  br i1 %60, label %61, label %99

61:                                               ; preds = %47
  %62 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 268435456
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %68 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %70, align 8
  %72 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = call i32 %71(%struct.mxc_nand_host* %72, i32 %75, i32 0)
  %77 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %78 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %80, align 8
  %82 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = call i32 %81(%struct.mxc_nand_host* %82, i32 %85, i32 1)
  br label %98

87:                                               ; preds = %61
  %88 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %89 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %91, align 8
  %93 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = call i32 %92(%struct.mxc_nand_host* %93, i32 %96, i32 1)
  br label %98

98:                                               ; preds = %87, %66
  br label %139

99:                                               ; preds = %47
  %100 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %108 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %110, align 8
  %112 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = call i32 %111(%struct.mxc_nand_host* %112, i32 %115, i32 0)
  %117 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %118 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %120, align 8
  %122 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %123 = load i32, i32* %6, align 4
  %124 = ashr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = call i32 %121(%struct.mxc_nand_host* %122, i32 %125, i32 1)
  br label %138

127:                                              ; preds = %99
  %128 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %129 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %131, align 8
  %133 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 255
  %137 = call i32 %132(%struct.mxc_nand_host* %133, i32 %136, i32 1)
  br label %138

138:                                              ; preds = %127, %106
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %44
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

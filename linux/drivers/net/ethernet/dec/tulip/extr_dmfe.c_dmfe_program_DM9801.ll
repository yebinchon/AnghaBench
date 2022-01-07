; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_program_DM9801.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_program_DM9801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i32, i32 }

@HPNA_NoiseFloor = common dso_local global i32 0, align 4
@DM9801_NOISE_FLOOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*, i32)* @dmfe_program_DM9801 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_program_DM9801(%struct.dmfe_board_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dmfe_board_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @HPNA_NoiseFloor, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @DM9801_NOISE_FLOOR, align 4
  store i32 %10, i32* @HPNA_NoiseFloor, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %74 [
    i32 47360, label %13
    i32 47361, label %43
    i32 47362, label %73
    i32 47363, label %73
  ]

13:                                               ; preds = %11
  %14 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %15 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 4096
  store i32 %17, i32* %15, align 4
  %18 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %19 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %22 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %25 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dmfe_phy_read(i32 %20, i32 %23, i32 24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @HPNA_NoiseFloor, align 4
  %30 = add nsw i32 %28, %29
  %31 = and i32 %30, 255
  %32 = or i32 %31, 61440
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %34 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %37 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dmfe_phy_read(i32 %35, i32 %38, i32 17, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %108

43:                                               ; preds = %11
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %48 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %51 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dmfe_phy_read(i32 %46, i32 %49, i32 25, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 65280
  %56 = load i32, i32* @HPNA_NoiseFloor, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %59 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %62 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %65 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dmfe_phy_read(i32 %60, i32 %63, i32 17, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 65520
  %70 = load i32, i32* @HPNA_NoiseFloor, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 3
  store i32 %72, i32* %5, align 4
  br label %108

73:                                               ; preds = %11, %11
  br label %74

74:                                               ; preds = %11, %73
  %75 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %76 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, 4096
  store i32 %78, i32* %76, align 4
  %79 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %80 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %83 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %86 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dmfe_phy_read(i32 %81, i32 %84, i32 25, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 65280
  %91 = load i32, i32* @HPNA_NoiseFloor, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 5
  store i32 %93, i32* %6, align 4
  %94 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %95 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %98 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %101 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dmfe_phy_read(i32 %96, i32 %99, i32 17, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 65520
  %106 = load i32, i32* @HPNA_NoiseFloor, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %74, %43, %13
  %109 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %110 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %113 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %116 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %119 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dmfe_phy_write(i32 %111, i32 %114, i32 16, i32 %117, i32 %120)
  %122 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %123 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %126 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %130 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dmfe_phy_write(i32 %124, i32 %127, i32 17, i32 %128, i32 %131)
  %133 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %134 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %137 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %141 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dmfe_phy_write(i32 %135, i32 %138, i32 25, i32 %139, i32 %142)
  ret void
}

declare dso_local i32 @dmfe_phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @dmfe_phy_write(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

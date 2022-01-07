; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_rga = type { %struct.reset_control*, i32, %struct.reset_control*, %struct.reset_control* }
%struct.reset_control = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get core reset controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to get axi reset controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to get ahb reset controller\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to get sclk clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to get aclk clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to get hclk clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_rga*)* @rga_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_parse_dt(%struct.rockchip_rga* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_rga*, align 8
  %4 = alloca %struct.reset_control*, align 8
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca %struct.reset_control*, align 8
  store %struct.rockchip_rga* %0, %struct.rockchip_rga** %3, align 8
  %7 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %8 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.reset_control* @devm_reset_control_get(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.reset_control* %10, %struct.reset_control** %4, align 8
  %11 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %12 = call i64 @IS_ERR(%struct.reset_control* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.reset_control* %19)
  store i32 %20, i32* %2, align 4
  br label %133

21:                                               ; preds = %1
  %22 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %23 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.reset_control* @devm_reset_control_get(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.reset_control* %25, %struct.reset_control** %5, align 8
  %26 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %27 = call i64 @IS_ERR(%struct.reset_control* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %31 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %35 = call i32 @PTR_ERR(%struct.reset_control* %34)
  store i32 %35, i32* %2, align 4
  br label %133

36:                                               ; preds = %21
  %37 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.reset_control* @devm_reset_control_get(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.reset_control* %40, %struct.reset_control** %6, align 8
  %41 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %42 = call i64 @IS_ERR(%struct.reset_control* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.reset_control* %49)
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %36
  %52 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %53 = call i32 @reset_control_assert(%struct.reset_control* %52)
  %54 = call i32 @udelay(i32 1)
  %55 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %56 = call i32 @reset_control_deassert(%struct.reset_control* %55)
  %57 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %58 = call i32 @reset_control_assert(%struct.reset_control* %57)
  %59 = call i32 @udelay(i32 1)
  %60 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %61 = call i32 @reset_control_deassert(%struct.reset_control* %60)
  %62 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %63 = call i32 @reset_control_assert(%struct.reset_control* %62)
  %64 = call i32 @udelay(i32 1)
  %65 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %66 = call i32 @reset_control_deassert(%struct.reset_control* %65)
  %67 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %68 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @devm_clk_get(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %71 = bitcast i8* %70 to %struct.reset_control*
  %72 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %73 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %72, i32 0, i32 3
  store %struct.reset_control* %71, %struct.reset_control** %73, align 8
  %74 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %75 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %74, i32 0, i32 3
  %76 = load %struct.reset_control*, %struct.reset_control** %75, align 8
  %77 = call i64 @IS_ERR(%struct.reset_control* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %51
  %80 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %81 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %85 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %84, i32 0, i32 3
  %86 = load %struct.reset_control*, %struct.reset_control** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.reset_control* %86)
  store i32 %87, i32* %2, align 4
  br label %133

88:                                               ; preds = %51
  %89 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %90 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @devm_clk_get(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %93 = bitcast i8* %92 to %struct.reset_control*
  %94 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %95 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %94, i32 0, i32 2
  store %struct.reset_control* %93, %struct.reset_control** %95, align 8
  %96 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %97 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %96, i32 0, i32 2
  %98 = load %struct.reset_control*, %struct.reset_control** %97, align 8
  %99 = call i64 @IS_ERR(%struct.reset_control* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %88
  %102 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %103 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %106 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %107 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %106, i32 0, i32 2
  %108 = load %struct.reset_control*, %struct.reset_control** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.reset_control* %108)
  store i32 %109, i32* %2, align 4
  br label %133

110:                                              ; preds = %88
  %111 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %112 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @devm_clk_get(i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %115 = bitcast i8* %114 to %struct.reset_control*
  %116 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %117 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %116, i32 0, i32 0
  store %struct.reset_control* %115, %struct.reset_control** %117, align 8
  %118 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %119 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %118, i32 0, i32 0
  %120 = load %struct.reset_control*, %struct.reset_control** %119, align 8
  %121 = call i64 @IS_ERR(%struct.reset_control* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %110
  %124 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %125 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %128 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %129 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %128, i32 0, i32 0
  %130 = load %struct.reset_control*, %struct.reset_control** %129, align 8
  %131 = call i32 @PTR_ERR(%struct.reset_control* %130)
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %123, %101, %79, %44, %29, %14
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.reset_control* @devm_reset_control_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

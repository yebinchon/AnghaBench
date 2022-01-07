; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sgmii = type { i32*, i32 }
%struct.device_node = type { i32 }

@MTK_MAX_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mediatek,sgmiisys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_sgmii_init(%struct.mtk_sgmii* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_sgmii*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.mtk_sgmii* %0, %struct.mtk_sgmii** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %12 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MTK_MAX_DEVS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.device_node* %20, %struct.device_node** %8, align 8
  %21 = load %struct.device_node*, %struct.device_node** %8, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = call i32 @syscon_node_to_regmap(%struct.device_node* %25)
  %27 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %24
  %43 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %13

55:                                               ; preds = %23, %13
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

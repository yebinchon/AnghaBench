; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_update_buf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_update_buf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { i32 }
%struct.sun6i_csi_dev = type { i32*, i32 }

@CSI_CH_F0_BUFA_REG = common dso_local global i32 0, align 4
@CSI_CH_F1_BUFA_REG = common dso_local global i32 0, align 4
@CSI_CH_F2_BUFA_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun6i_csi_update_buf_addr(%struct.sun6i_csi* %0, i32 %1) #0 {
  %3 = alloca %struct.sun6i_csi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_csi_dev*, align 8
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %7 = call %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi* %6)
  store %struct.sun6i_csi_dev* %7, %struct.sun6i_csi_dev** %5, align 8
  %8 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %9 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CSI_CH_F0_BUFA_REG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %14 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %12, %17
  %19 = ashr i32 %18, 2
  %20 = call i32 @regmap_write(i32 %10, i32 %11, i32 %19)
  %21 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %22 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %29 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CSI_CH_F1_BUFA_REG, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %34 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  %39 = ashr i32 %38, 2
  %40 = call i32 @regmap_write(i32 %30, i32 %31, i32 %39)
  br label %41

41:                                               ; preds = %27, %2
  %42 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %43 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %50 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CSI_CH_F2_BUFA_REG, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %55 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = ashr i32 %59, 2
  %61 = call i32 @regmap_write(i32 %51, i32 %52, i32 %60)
  br label %62

62:                                               ; preds = %48, %41
  ret void
}

declare dso_local %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_setup_scratch_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_setup_scratch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_csi = type { i32**, %struct.TYPE_6__, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"No more available buffer, using the scratch buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_csi*, i32)* @sun4i_csi_setup_scratch_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_csi_setup_scratch_buffer(%struct.sun4i_csi* %0, i32 %1) #0 {
  %3 = alloca %struct.sun4i_csi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun4i_csi* %0, %struct.sun4i_csi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %8 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %12 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %18 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %25 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @CSI_BUF_ADDR_REG(i32 %27, i32 %28)
  %30 = add nsw i64 %26, %29
  %31 = call i32 @writel(i32 %23, i64 %30)
  %32 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %33 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %50 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CSI_BUF_ADDR_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

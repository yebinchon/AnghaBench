; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_load_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_load_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MCHIP_VRJ_TABLE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mchip_load_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_load_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* @jpeg_huffman_tables(i32* %2)
  store i32* %4, i32** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %16 = load i64, i64* @MCHIP_VRJ_TABLE_DATA, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1, i32 0), align 8
  %24 = call i32* @jpeg_quantisation_tables(i32* %2, i32 %23)
  store i32* %24, i32** %3, align 8
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %39, %22
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %36 = load i64, i64* @MCHIP_VRJ_TABLE_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %25

42:                                               ; preds = %25
  ret void
}

declare dso_local i32* @jpeg_huffman_tables(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32* @jpeg_quantisation_tables(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

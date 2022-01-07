; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de21040_get_media_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de21040_get_media_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@DE_MAX_MEDIA = common dso_local global i32 0, align 4
@t21040_csr13 = common dso_local global i32* null, align 8
@t21040_csr14 = common dso_local global i32* null, align 8
@t21040_csr15 = common dso_local global i32* null, align 8
@DE_MEDIA_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de21040_get_media_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de21040_get_media_info(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  %3 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %4 = load %struct.de_private*, %struct.de_private** %2, align 8
  %5 = getelementptr inbounds %struct.de_private, %struct.de_private* %4, i32 0, i32 0
  store i32 129, i32* %5, align 8
  %6 = load i32, i32* @SUPPORTED_TP, align 4
  %7 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SUPPORTED_AUI, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.de_private*, %struct.de_private** %2, align 8
  %14 = getelementptr inbounds %struct.de_private, %struct.de_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.de_private*, %struct.de_private** %2, align 8
  %18 = getelementptr inbounds %struct.de_private, %struct.de_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.de_private*, %struct.de_private** %2, align 8
  %21 = getelementptr inbounds %struct.de_private, %struct.de_private* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %83, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DE_MAX_MEDIA, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %73 [
    i32 130, label %28
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %26, %26, %26
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.de_private*, %struct.de_private** %2, align 8
  %31 = getelementptr inbounds %struct.de_private, %struct.de_private* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 4
  %37 = load i32*, i32** @t21040_csr13, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.de_private*, %struct.de_private** %2, align 8
  %43 = getelementptr inbounds %struct.de_private, %struct.de_private* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %41, i32* %48, align 4
  %49 = load i32*, i32** @t21040_csr14, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.de_private*, %struct.de_private** %2, align 8
  %55 = getelementptr inbounds %struct.de_private, %struct.de_private* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %53, i32* %60, align 4
  %61 = load i32*, i32** @t21040_csr15, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.de_private*, %struct.de_private** %2, align 8
  %67 = getelementptr inbounds %struct.de_private, %struct.de_private* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  br label %82

73:                                               ; preds = %26
  %74 = load i32, i32* @DE_MEDIA_INVALID, align 4
  %75 = load %struct.de_private*, %struct.de_private** %2, align 8
  %76 = getelementptr inbounds %struct.de_private, %struct.de_private* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %28
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %22

86:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

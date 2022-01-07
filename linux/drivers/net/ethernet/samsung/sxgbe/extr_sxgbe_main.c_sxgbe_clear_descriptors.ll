; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_clear_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_clear_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*)*, i32 (i32*, i32, i32, i32)* }
%struct.TYPE_5__ = type { i32* }

@SXGBE_RX_QUEUES = common dso_local global i32 0, align 4
@SXGBE_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_priv_data*)* @sxgbe_clear_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_clear_descriptors(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca %struct.sxgbe_priv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %2, align 8
  %7 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %8 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %11 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %58, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SXGBE_RX_QUEUES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %24 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %28, align 8
  %30 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %31 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %30, i32 0, i32 6
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %43 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %46 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, 1
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 %29(i32* %41, i32 %44, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %22
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %18

57:                                               ; preds = %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %13

61:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %96, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SXGBE_TX_QUEUES, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %92, %66
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %73 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %80 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 %78(i32* %90)
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %67

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %62

99:                                               ; preds = %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

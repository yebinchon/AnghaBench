; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.rx_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OWNED_BY_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*)* @velocity_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_rx_refill(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rx_desc*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  %6 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %60, %1
  %11 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %12 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %14, i64 %16
  store %struct.rx_desc* %17, %struct.rx_desc** %5, align 8
  %18 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %19 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OWNED_BY_NIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  br label %67

26:                                               ; preds = %10
  %27 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %28 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @velocity_alloc_rx_buf(%struct.velocity_info* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %67

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %49 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  br label %58

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %63 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %10, label %67

67:                                               ; preds = %60, %42, %25
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %73 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %77 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %70, %67
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @velocity_alloc_rx_buf(%struct.velocity_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_poll_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.rocker_port = type { i32, %struct.TYPE_4__*, %struct.rocker* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rocker = type { i32 }
%struct.rocker_desc_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"rx desc received with err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"rx processing failed with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @rocker_port_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_poll_rx(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker*, align 8
  %7 = alloca %struct.rocker_desc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %11 = call %struct.rocker_port* @rocker_port_napi_rx_get(%struct.napi_struct* %10)
  store %struct.rocker_port* %11, %struct.rocker_port** %5, align 8
  %12 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %13 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %12, i32 0, i32 2
  %14 = load %struct.rocker*, %struct.rocker** %13, align 8
  store %struct.rocker* %14, %struct.rocker** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %69, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %21 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %20, i32 0, i32 0
  %22 = call %struct.rocker_desc_info* @rocker_desc_tail_get(i32* %21)
  store %struct.rocker_desc_info* %22, %struct.rocker_desc_info** %7, align 8
  %23 = icmp ne %struct.rocker_desc_info* %22, null
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %79

26:                                               ; preds = %24
  %27 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %28 = call i32 @rocker_desc_err(%struct.rocker_desc_info* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = call i64 (...) @net_ratelimit()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %36 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @netdev_err(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  br label %58

41:                                               ; preds = %26
  %42 = load %struct.rocker*, %struct.rocker** %6, align 8
  %43 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %44 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %45 = call i32 @rocker_port_rx_proc(%struct.rocker* %42, %struct.rocker_port* %43, %struct.rocker_desc_info* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = call i64 (...) @net_ratelimit()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %53 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @netdev_err(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %48, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %63 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %71 = call i32 @rocker_desc_gen_clear(%struct.rocker_desc_info* %70)
  %72 = load %struct.rocker*, %struct.rocker** %6, align 8
  %73 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %74 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %73, i32 0, i32 0
  %75 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %76 = call i32 @rocker_desc_head_set(%struct.rocker* %72, i32* %74, %struct.rocker_desc_info* %75)
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %15

79:                                               ; preds = %24
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @napi_complete_done(%struct.napi_struct* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.rocker*, %struct.rocker** %6, align 8
  %89 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %90 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %89, i32 0, i32 0
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @rocker_dma_ring_credits_set(%struct.rocker* %88, i32* %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.rocker_port* @rocker_port_napi_rx_get(%struct.napi_struct*) #1

declare dso_local %struct.rocker_desc_info* @rocker_desc_tail_get(i32*) #1

declare dso_local i32 @rocker_desc_err(%struct.rocker_desc_info*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @rocker_port_rx_proc(%struct.rocker*, %struct.rocker_port*, %struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_desc_gen_clear(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_desc_head_set(%struct.rocker*, i32*, %struct.rocker_desc_info*) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @rocker_dma_ring_credits_set(%struct.rocker*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_queue_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_queue_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32*, %struct.TYPE_10__*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i40e_channel = type { i32, i32, i32, i32, i32 }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_BW_MBPS_DIVISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed creating queue channel with TC%d: queues %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_configure_queue_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_configure_queue_channels(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %109, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %112

19:                                               ; preds = %15
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %19
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.i40e_channel* @kzalloc(i32 20, i32 %29)
  store %struct.i40e_channel* %30, %struct.i40e_channel** %4, align 8
  %31 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %32 = icmp ne %struct.i40e_channel* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %114

36:                                               ; preds = %28
  %37 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %41 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %63 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @I40E_BW_MBPS_DIVISOR, align 4
  %72 = call i32 @do_div(i32 %70, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %77 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %76, i32 0, i32 2
  %78 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %79 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %82 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %83 = call i32 @i40e_create_queue_channel(%struct.i40e_vsi* %81, %struct.i40e_channel* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %36
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96)
  br label %114

98:                                               ; preds = %36
  %99 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %100 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %103 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %19
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %15

112:                                              ; preds = %15
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %118

114:                                              ; preds = %86, %33
  %115 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %116 = call i32 @i40e_remove_queue_channels(%struct.i40e_vsi* %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %112
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.i40e_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i40e_create_queue_channel(%struct.i40e_vsi*, %struct.i40e_channel*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_remove_queue_channels(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

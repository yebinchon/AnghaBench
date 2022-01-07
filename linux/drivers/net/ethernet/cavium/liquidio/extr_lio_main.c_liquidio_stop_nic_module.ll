; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_stop_nic_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_stop_nic_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lio = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Stopping network interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Init for Octeon was not completed\0A\00", align 1
@OCT_DRV_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Network interfaces stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @liquidio_stop_nic_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_stop_nic_module(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %112

22:                                               ; preds = %1
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 5
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load i32, i32* @OCT_DRV_OFFLINE, align 4
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 5
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %33 = call i32 @lio_vf_rep_destroy(%struct.octeon_device* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %73, %22
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.lio* @GET_LIO(i32 %48)
  store %struct.lio* %49, %struct.lio** %6, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %69, %40
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %58 = load %struct.lio*, %struct.lio** %6, align 8
  %59 = getelementptr inbounds %struct.lio, %struct.lio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @octeon_unregister_droq_ops(%struct.octeon_device* %57, i32 %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %50

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %34

76:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @liquidio_destroy_nic_device(%struct.octeon_device* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @devlink_unregister(i32* %98)
  %100 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @devlink_free(i32* %102)
  %104 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %95, %90
  %107 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @lio_vf_rep_destroy(%struct.octeon_device*) #1

declare dso_local %struct.lio* @GET_LIO(i32) #1

declare dso_local i32 @octeon_unregister_droq_ops(%struct.octeon_device*, i32) #1

declare dso_local i32 @liquidio_destroy_nic_device(%struct.octeon_device*, i32) #1

declare dso_local i32 @devlink_unregister(i32*) #1

declare dso_local i32 @devlink_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

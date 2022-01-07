; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_hwstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_hwstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFH_REW_OP_TWO_STEP_PTP = common dso_local global i32 0, align 4
@IFH_REW_OP_ORIGIN_PTP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_port*, %struct.ifreq*)* @ocelot_hwstamp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_hwstamp_set(%struct.ocelot_port* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.ocelot*, align 8
  %7 = alloca %struct.hwtstamp_config, align 8
  store %struct.ocelot_port* %0, %struct.ocelot_port** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %9 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %8, i32 0, i32 1
  %10 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  store %struct.ocelot* %10, %struct.ocelot** %6, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @copy_from_user(%struct.hwtstamp_config* %7, i32 %13, i32 16)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %40 [
    i32 129, label %29
    i32 128, label %33
    i32 130, label %37
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* @IFH_REW_OP_TWO_STEP_PTP, align 4
  %31 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %32 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %43

33:                                               ; preds = %26
  %34 = load i32, i32* @IFH_REW_OP_ORIGIN_PTP, align 4
  %35 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %36 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %39 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %37, %33, %29
  %44 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %45 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %52 [
    i32 145, label %49
    i32 146, label %50
    i32 131, label %50
    i32 142, label %50
    i32 141, label %50
    i32 143, label %50
    i32 144, label %50
    i32 134, label %50
    i32 133, label %50
    i32 135, label %50
    i32 137, label %50
    i32 136, label %50
    i32 138, label %50
    i32 139, label %50
    i32 132, label %50
    i32 140, label %50
  ]

49:                                               ; preds = %43
  br label %58

50:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  %51 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  store i32 139, i32* %51, align 4
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %54 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %50, %49
  %59 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %60 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %59, i32 0, i32 1
  %61 = call i32 @memcpy(i32* %60, %struct.hwtstamp_config* %7, i32 16)
  %62 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %63 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %66 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @copy_to_user(i32 %67, %struct.hwtstamp_config* %7, i32 16)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  br label %74

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %52, %40, %23, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.hwtstamp_config*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

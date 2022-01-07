; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_eql.c_eql_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_eql.c_eql_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @eql_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eql_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 131
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @CAP_NET_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %13, %10, %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %58 [
    i32 132, label %22
    i32 133, label %28
    i32 130, label %34
    i32 128, label %40
    i32 131, label %46
    i32 129, label %52
  ]

22:                                               ; preds = %20
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @eql_enslave(%struct.net_device* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %20
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @eql_emancipate(%struct.net_device* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %20
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eql_g_slave_cfg(%struct.net_device* %35, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %20
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @eql_s_slave_cfg(%struct.net_device* %41, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %20
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %49 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @eql_g_master_cfg(%struct.net_device* %47, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %20
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @eql_s_master_cfg(%struct.net_device* %53, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %20
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %52, %46, %40, %34, %28, %22, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @eql_enslave(%struct.net_device*, i32) #1

declare dso_local i32 @eql_emancipate(%struct.net_device*, i32) #1

declare dso_local i32 @eql_g_slave_cfg(%struct.net_device*, i32) #1

declare dso_local i32 @eql_s_slave_cfg(%struct.net_device*, i32) #1

declare dso_local i32 @eql_g_master_cfg(%struct.net_device*, i32) #1

declare dso_local i32 @eql_s_master_cfg(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

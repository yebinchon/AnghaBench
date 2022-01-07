; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_reinit_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_reinit_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i64, i32, %struct.TYPE_4__*, %struct.net_device*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"RXQ:%u setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*)* @bnad_reinit_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_reinit_rx(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %9 = load %struct.bnad*, %struct.bnad** %2, align 8
  %10 = getelementptr inbounds %struct.bnad, %struct.bnad* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.bnad*, %struct.bnad** %2, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.bnad*, %struct.bnad** %2, align 8
  %20 = getelementptr inbounds %struct.bnad, %struct.bnad* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.bnad*, %struct.bnad** %2, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @bnad_destroy_rx(%struct.bnad* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.bnad*, %struct.bnad** %2, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.bnad*, %struct.bnad** %2, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.bnad*, %struct.bnad** %2, align 8
  %44 = getelementptr inbounds %struct.bnad, %struct.bnad* %43, i32 0, i32 3
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BNAD_FRAME_SIZE(i32 %47)
  %49 = call i32 @bna_enet_mtu_set(i32* %42, i32 %48, i32* null)
  %50 = load %struct.bnad*, %struct.bnad** %2, align 8
  %51 = getelementptr inbounds %struct.bnad, %struct.bnad* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %77, %35
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.bnad*, %struct.bnad** %2, align 8
  %57 = getelementptr inbounds %struct.bnad, %struct.bnad* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  %63 = load %struct.bnad*, %struct.bnad** %2, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @bnad_setup_rx(%struct.bnad* %63, i64 %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  store i64 %72, i64* %4, align 8
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %71, %68, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %54

80:                                               ; preds = %54
  %81 = load %struct.bnad*, %struct.bnad** %2, align 8
  %82 = getelementptr inbounds %struct.bnad, %struct.bnad* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %80
  %89 = load i64, i64* %4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %88
  %92 = load %struct.bnad*, %struct.bnad** %2, align 8
  %93 = call i32 @bnad_restore_vlans(%struct.bnad* %92, i32 0)
  %94 = load %struct.bnad*, %struct.bnad** %2, align 8
  %95 = call i32 @bnad_enable_default_bcast(%struct.bnad* %94)
  %96 = load %struct.bnad*, %struct.bnad** %2, align 8
  %97 = getelementptr inbounds %struct.bnad, %struct.bnad* %96, i32 0, i32 1
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.bnad*, %struct.bnad** %2, align 8
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bnad_mac_addr_set_locked(%struct.bnad* %100, i32 %103)
  %105 = load %struct.bnad*, %struct.bnad** %2, align 8
  %106 = getelementptr inbounds %struct.bnad, %struct.bnad* %105, i32 0, i32 1
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @bnad_set_rx_mode(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %91, %88, %80
  %112 = load i64, i64* %7, align 8
  ret i64 %112
}

declare dso_local i32 @bnad_destroy_rx(%struct.bnad*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_enet_mtu_set(i32*, i32, i32*) #1

declare dso_local i32 @BNAD_FRAME_SIZE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @bnad_setup_rx(%struct.bnad*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @bnad_restore_vlans(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_enable_default_bcast(%struct.bnad*) #1

declare dso_local i32 @bnad_mac_addr_set_locked(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_set_rx_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

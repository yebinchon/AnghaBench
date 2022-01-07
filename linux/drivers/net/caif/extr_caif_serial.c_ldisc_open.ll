; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i8*, i32, %struct.ser_device*, i32, %struct.TYPE_2__* }
%struct.ser_device = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_TTY_CONFIG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cf%s\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@caifdev_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ser_lock = common dso_local global i32 0, align 4
@ser_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ldisc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldisc_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ser_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CAP_SYS_TTY_CONFIG, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %21, %17
  %29 = call i32 @ser_release(i32* null)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i8* %30, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %96

41:                                               ; preds = %28
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %44 = load i32, i32* @caifdev_setup, align 4
  %45 = call %struct.net_device* @alloc_netdev(i32 24, i8* %42, i32 %43, i32 %44)
  store %struct.net_device* %45, %struct.net_device** %5, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call %struct.ser_device* @netdev_priv(%struct.net_device* %52)
  store %struct.ser_device* %53, %struct.ser_device** %4, align 8
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = call i32 @tty_kref_get(%struct.tty_struct* %54)
  %56 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %57 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %60 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %59, i32 0, i32 1
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = call i32 @debugfs_init(%struct.ser_device* %61, %struct.tty_struct* %62)
  %64 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %68 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 2
  store %struct.ser_device* %67, %struct.ser_device** %69, align 8
  %70 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %71 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 1
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = call i32 (...) @rtnl_lock()
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @register_netdevice(%struct.net_device* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %51
  %80 = call i32 (...) @rtnl_unlock()
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @free_netdev(%struct.net_device* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %96

85:                                               ; preds = %51
  %86 = call i32 @spin_lock(i32* @ser_lock)
  %87 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %88 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %87, i32 0, i32 0
  %89 = call i32 @list_add(i32* %88, i32* @ser_list)
  %90 = call i32 @spin_unlock(i32* @ser_lock)
  %91 = call i32 (...) @rtnl_unlock()
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @netif_stop_queue(%struct.net_device* %92)
  %94 = load %struct.ser_device*, %struct.ser_device** %4, align 8
  %95 = call i32 @update_tty_status(%struct.ser_device* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %85, %79, %48, %38, %25, %14
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ser_release(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.ser_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i32 @debugfs_init(%struct.ser_device*, %struct.tty_struct*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @update_tty_status(%struct.ser_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

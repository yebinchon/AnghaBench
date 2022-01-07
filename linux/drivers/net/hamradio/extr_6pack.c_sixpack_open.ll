; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sixpack_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sixpack_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.sixpack*, %struct.TYPE_2__* }
%struct.sixpack = type { i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.tty_struct*, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sp%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@sp_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@AX25_MTU = common dso_local global i64 0, align 8
@SIXP_TXDELAY = common dso_local global i32 0, align 4
@SIXP_PERSIST = common dso_local global i32 0, align 4
@SIXP_SLOTTIME = common dso_local global i32 0, align 4
@sp_xmit_on_air = common dso_local global i32 0, align 4
@resync_tnc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @sixpack_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sixpack_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sixpack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @CAP_NET_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %157

16:                                               ; preds = %1
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %157

26:                                               ; preds = %16
  %27 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %28 = load i32, i32* @sp_setup, align 4
  %29 = call %struct.net_device* @alloc_netdev(i32 160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  store %struct.net_device* %29, %struct.net_device** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %155

35:                                               ; preds = %26
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call %struct.sixpack* @netdev_priv(%struct.net_device* %36)
  store %struct.sixpack* %37, %struct.sixpack** %7, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %40 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %39, i32 0, i32 24
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %42 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %41, i32 0, i32 6
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %45 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %44, i32 0, i32 23
  %46 = call i32 @refcount_set(i32* %45, i32 1)
  %47 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %48 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %47, i32 0, i32 22
  %49 = call i32 @init_completion(i32* %48)
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kmalloc(i64 %56, i32 %57)
  store i8* %58, i8** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kmalloc(i64 %60, i32 %61)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %35
  %66 = load i8*, i8** %5, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %35
  %69 = load i32, i32* @ENOBUFS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %148

71:                                               ; preds = %65
  %72 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %73 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %72, i32 0, i32 6
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %77 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %76, i32 0, i32 21
  store %struct.tty_struct* %75, %struct.tty_struct** %77, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %80 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %83 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* @AX25_MTU, align 8
  %85 = add nsw i64 %84, 73
  %86 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %87 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %86, i32 0, i32 20
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %90 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %92 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %91, i32 0, i32 19
  store i64 0, i64* %92, align 8
  %93 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %94 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %93, i32 0, i32 18
  store i64 0, i64* %94, align 8
  %95 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %96 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %95, i32 0, i32 17
  store i64 0, i64* %96, align 8
  %97 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %98 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %97, i32 0, i32 16
  store i64 0, i64* %98, align 8
  %99 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %100 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %99, i32 0, i32 15
  store i64 0, i64* %100, align 8
  %101 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %102 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %101, i32 0, i32 14
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @SIXP_TXDELAY, align 4
  %104 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %105 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %104, i32 0, i32 13
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @SIXP_PERSIST, align 4
  %107 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %108 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %107, i32 0, i32 12
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @SIXP_SLOTTIME, align 4
  %110 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %111 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 8
  %112 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %113 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %112, i32 0, i32 3
  store i32 96, i32* %113, align 8
  %114 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %115 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %114, i32 0, i32 4
  store i32 1, i32* %115, align 4
  %116 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %117 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %116, i32 0, i32 5
  store i32 1, i32* %117, align 8
  %118 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %119 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %118, i32 0, i32 10
  store i64 0, i64* %119, align 8
  %120 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %121 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %120, i32 0, i32 9
  store i64 0, i64* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = call i32 @netif_start_queue(%struct.net_device* %122)
  %124 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %125 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %124, i32 0, i32 8
  %126 = load i32, i32* @sp_xmit_on_air, align 4
  %127 = call i32 @timer_setup(i32* %125, i32 %126, i32 0)
  %128 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %129 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %128, i32 0, i32 7
  %130 = load i32, i32* @resync_tnc, align 4
  %131 = call i32 @timer_setup(i32* %129, i32 %130, i32 0)
  %132 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %133 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %132, i32 0, i32 6
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %136 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %137 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %136, i32 0, i32 1
  store %struct.sixpack* %135, %struct.sixpack** %137, align 8
  %138 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %139 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %138, i32 0, i32 0
  store i32 65536, i32* %139, align 8
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = call i32 @register_netdev(%struct.net_device* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %71
  br label %148

145:                                              ; preds = %71
  %146 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %147 = call i32 @tnc_init(%struct.sixpack* %146)
  store i32 0, i32* %2, align 4
  br label %157

148:                                              ; preds = %144, %68
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @kfree(i8* %149)
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = call i32 @free_netdev(%struct.net_device* %153)
  br label %155

155:                                              ; preds = %148, %32
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %145, %23, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.sixpack* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @tnc_init(%struct.sixpack*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

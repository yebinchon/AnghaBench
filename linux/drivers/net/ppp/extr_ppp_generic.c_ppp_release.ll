; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ppp_file* }
%struct.ppp_file = type { i32, i32 }
%struct.ppp = type { i32, %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ppp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ppp_file*, align 8
  %6 = alloca %struct.ppp*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ppp_file*, %struct.ppp_file** %8, align 8
  store %struct.ppp_file* %9, %struct.ppp_file** %5, align 8
  %10 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %11 = icmp ne %struct.ppp_file* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  store %struct.ppp_file* null, %struct.ppp_file** %14, align 8
  %15 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %16 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %21 = call %struct.ppp* @PF_TO_PPP(%struct.ppp_file* %20)
  store %struct.ppp* %21, %struct.ppp** %6, align 8
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.ppp*, %struct.ppp** %6, align 8
  %25 = getelementptr inbounds %struct.ppp, %struct.ppp* %24, i32 0, i32 1
  %26 = load %struct.file*, %struct.file** %25, align 8
  %27 = icmp eq %struct.file* %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.ppp*, %struct.ppp** %6, align 8
  %30 = getelementptr inbounds %struct.ppp, %struct.ppp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @unregister_netdevice(i32 %31)
  br label %33

33:                                               ; preds = %28, %19
  %34 = call i32 (...) @rtnl_unlock()
  br label %35

35:                                               ; preds = %33, %12
  %36 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %37 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %36, i32 0, i32 1
  %38 = call i64 @refcount_dec_and_test(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %42 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %52 [
    i32 128, label %44
    i32 129, label %48
  ]

44:                                               ; preds = %40
  %45 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %46 = call %struct.ppp* @PF_TO_PPP(%struct.ppp_file* %45)
  %47 = call i32 @ppp_destroy_interface(%struct.ppp* %46)
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %50 = call i32 @PF_TO_CHANNEL(%struct.ppp_file* %49)
  %51 = call i32 @ppp_destroy_channel(i32 %50)
  br label %52

52:                                               ; preds = %40, %48, %44
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %2
  ret i32 0
}

declare dso_local %struct.ppp* @PF_TO_PPP(%struct.ppp_file*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @unregister_netdevice(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @ppp_destroy_interface(%struct.ppp*) #1

declare dso_local i32 @ppp_destroy_channel(i32) #1

declare dso_local i32 @PF_TO_CHANNEL(%struct.ppp_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

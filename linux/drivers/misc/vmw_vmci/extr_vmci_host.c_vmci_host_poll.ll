; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_host.c_vmci_host_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_host.c_vmci_host_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vmci_host_dev* }
%struct.vmci_host_dev = type { i64, %struct.vmci_ctx* }
%struct.vmci_ctx = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VMCIOBJ_CONTEXT = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @vmci_host_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_host_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vmci_host_dev*, align 8
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.vmci_host_dev*, %struct.vmci_host_dev** %9, align 8
  store %struct.vmci_host_dev* %10, %struct.vmci_host_dev** %5, align 8
  %11 = load %struct.vmci_host_dev*, %struct.vmci_host_dev** %5, align 8
  %12 = getelementptr inbounds %struct.vmci_host_dev, %struct.vmci_host_dev* %11, i32 0, i32 1
  %13 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  store %struct.vmci_ctx* %13, %struct.vmci_ctx** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.vmci_host_dev*, %struct.vmci_host_dev** %5, align 8
  %15 = getelementptr inbounds %struct.vmci_host_dev, %struct.vmci_host_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VMCIOBJ_CONTEXT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %23, i32* %26, i32* %27)
  br label %29

29:                                               ; preds = %22, %19
  %30 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @vmci_handle_arr_get_size(i32 %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %29
  %44 = load i32, i32* @EPOLLIN, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %2
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vmci_handle_arr_get_size(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

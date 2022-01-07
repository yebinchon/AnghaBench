; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.tun_file* }
%struct.tun_file = type { %struct.TYPE_10__, i32, %struct.TYPE_11__, i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, %struct.file*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@current = common dso_local global %struct.TYPE_12__* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tunX: tun_chr_open\0A\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tun_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tun_socket_ops = common dso_local global i32 0, align 4
@tun_sock_write_space = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SOCK_ZEROCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tun_chr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_chr_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tun_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.net*, %struct.net** %11, align 8
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = call i32 @DBG1(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load i32, i32* @AF_UNSPEC, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @sk_alloc(%struct.net* %15, i32 %16, i32 %17, i32* @tun_proto, i32 0)
  %19 = inttoptr i64 %18 to %struct.tun_file*
  store %struct.tun_file* %19, %struct.tun_file** %7, align 8
  %20 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %21 = icmp ne %struct.tun_file* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %84

25:                                               ; preds = %2
  %26 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %27 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %26, i32 0, i32 7
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @ptr_ring_init(i32* %27, i32 0, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 0
  %34 = call i32 @sk_free(%struct.TYPE_10__* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %25
  %38 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %39 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %42 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @RCU_INIT_POINTER(i32 %43, i32* null)
  %45 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %46 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %48 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %50 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %56 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store %struct.file* %54, %struct.file** %57, align 8
  %58 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %59 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32* @tun_socket_ops, i32** %60, align 8
  %61 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %62 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %61, i32 0, i32 2
  %63 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %64 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %63, i32 0, i32 0
  %65 = call i32 @sock_init_data(%struct.TYPE_11__* %62, %struct.TYPE_10__* %64)
  %66 = load i32, i32* @tun_sock_write_space, align 4
  %67 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %68 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @INT_MAX, align 4
  %71 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %72 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  store %struct.tun_file* %74, %struct.tun_file** %76, align 8
  %77 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %78 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %77, i32 0, i32 1
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %81 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %80, i32 0, i32 0
  %82 = load i32, i32* @SOCK_ZEROCOPY, align 4
  %83 = call i32 @sock_set_flag(%struct.TYPE_10__* %81, i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %37, %31, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @DBG1(i32, i8*) #1

declare dso_local i64 @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i64 @ptr_ring_init(i32*, i32, i32) #1

declare dso_local i32 @sk_free(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sock_init_data(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

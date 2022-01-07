; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.tap_dev = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.tap_queue = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_13__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, %struct.file*, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@current = common dso_local global %struct.TYPE_15__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tap_proto = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@tap_socket_ops = common dso_local global i32 0, align 4
@tap_sock_write_space = common dso_local global i32 0, align 4
@tap_sock_destruct = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@SOCK_ZEROCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tap_dev*, align 8
  %8 = alloca %struct.tap_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @imajor(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @iminor(%struct.inode* %20)
  %22 = call %struct.tap_dev* @dev_get_by_tap_file(i32 %19, i32 %21)
  store %struct.tap_dev* %22, %struct.tap_dev** %7, align 8
  %23 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %24 = icmp ne %struct.tap_dev* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %136

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load i32, i32* @AF_UNSPEC, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @sk_alloc(%struct.net* %29, i32 %30, i32 %31, i32* @tap_proto, i32 0)
  %33 = inttoptr i64 %32 to %struct.tap_queue*
  store %struct.tap_queue* %33, %struct.tap_queue** %8, align 8
  %34 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %35 = icmp ne %struct.tap_queue* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %136

37:                                               ; preds = %26
  %38 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %39 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %38, i32 0, i32 4
  %40 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %41 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i64 @ptr_ring_init(i32* %39, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %50 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %49, i32 0, i32 2
  %51 = call i32 @sk_free(%struct.TYPE_12__* %50)
  br label %136

52:                                               ; preds = %37
  %53 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %54 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load i32, i32* @SOCK_RAW, align 4
  %59 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %60 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @SS_CONNECTED, align 4
  %63 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %64 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %68 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store %struct.file* %66, %struct.file** %69, align 8
  %70 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %71 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32* @tap_socket_ops, i32** %72, align 8
  %73 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %74 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %73, i32 0, i32 3
  %75 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %76 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %75, i32 0, i32 2
  %77 = call i32 @sock_init_data(%struct.TYPE_13__* %74, %struct.TYPE_12__* %76)
  %78 = load i32, i32* @tap_sock_write_space, align 4
  %79 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %80 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @tap_sock_destruct, align 4
  %83 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %84 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @IFF_VNET_HDR, align 4
  %87 = load i32, i32* @IFF_NO_PI, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IFF_TAP, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %92 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %94 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %93, i32 0, i32 1
  store i32 4, i32* %94, align 4
  %95 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %96 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %52
  %104 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %105 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NETIF_F_SG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %114 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %113, i32 0, i32 2
  %115 = load i32, i32* @SOCK_ZEROCOPY, align 4
  %116 = call i32 @sock_set_flag(%struct.TYPE_12__* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %103, %52
  %118 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %119 = load %struct.file*, %struct.file** %5, align 8
  %120 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %121 = call i32 @tap_set_queue(%struct.tap_dev* %118, %struct.file* %119, %struct.tap_queue* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %132

125:                                              ; preds = %117
  %126 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %127 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = call i32 @dev_put(%struct.TYPE_14__* %128)
  %130 = call i32 (...) @rtnl_unlock()
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %147

132:                                              ; preds = %124
  %133 = load %struct.tap_queue*, %struct.tap_queue** %8, align 8
  %134 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %133, i32 0, i32 2
  %135 = call i32 @sock_put(%struct.TYPE_12__* %134)
  br label %136

136:                                              ; preds = %132, %48, %36, %25
  %137 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %138 = icmp ne %struct.tap_dev* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %141 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = call i32 @dev_put(%struct.TYPE_14__* %142)
  br label %144

144:                                              ; preds = %139, %136
  %145 = call i32 (...) @rtnl_unlock()
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %125
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.tap_dev* @dev_get_by_tap_file(i32, i32) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i64 @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i64 @ptr_ring_init(i32*, i32, i32) #1

declare dso_local i32 @sk_free(%struct.TYPE_12__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sock_init_data(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sock_set_flag(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @tap_set_queue(%struct.tap_dev*, %struct.file*, %struct.tap_queue*) #1

declare dso_local i32 @dev_put(%struct.TYPE_14__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sock_put(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

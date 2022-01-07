; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.vxlan_config = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@vxlan_link_ops = common dso_local global i32 0, align 4
@list_kill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @vxlan_dev_create(%struct.net* %0, i8* %1, i32 %2, %struct.vxlan_config* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vxlan_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vxlan_config* %3, %struct.vxlan_config** %9, align 8
  %15 = load i32, i32* @IFLA_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = bitcast %struct.nlattr** %19 to %struct.nlattr***
  %21 = mul nuw i64 8, %17
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(%struct.nlattr*** %20, i32 0, i32 %22)
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.net_device* @rtnl_create_link(%struct.net* %24, i8* %25, i32 %26, i32* @vxlan_link_ops, %struct.nlattr** %19, i32* null)
  store %struct.net_device* %27, %struct.net_device** %12, align 8
  %28 = load %struct.net_device*, %struct.net_device** %12, align 8
  %29 = call i64 @IS_ERR(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %32, %struct.net_device** %5, align 8
  store i32 1, i32* %14, align 4
  br label %60

33:                                               ; preds = %4
  %34 = load %struct.net*, %struct.net** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %12, align 8
  %36 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %37 = call i32 @__vxlan_dev_create(%struct.net* %34, %struct.net_device* %35, %struct.vxlan_config* %36, i32* null)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %12, align 8
  %42 = call i32 @free_netdev(%struct.net_device* %41)
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.net_device* @ERR_PTR(i32 %43)
  store %struct.net_device* %44, %struct.net_device** %5, align 8
  store i32 1, i32* %14, align 4
  br label %60

45:                                               ; preds = %33
  %46 = load %struct.net_device*, %struct.net_device** %12, align 8
  %47 = call i32 @rtnl_configure_link(%struct.net_device* %46, i32* null)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @list_kill, align 4
  %52 = call i32 @LIST_HEAD(i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %12, align 8
  %54 = call i32 @vxlan_dellink(%struct.net_device* %53, i32* @list_kill)
  %55 = call i32 @unregister_netdevice_many(i32* @list_kill)
  %56 = load i32, i32* %13, align 4
  %57 = call %struct.net_device* @ERR_PTR(i32 %56)
  store %struct.net_device* %57, %struct.net_device** %5, align 8
  store i32 1, i32* %14, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %59, %struct.net_device** %5, align 8
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %50, %40, %31
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.nlattr***, i32, i32) #2

declare dso_local %struct.net_device* @rtnl_create_link(%struct.net*, i8*, i32, i32*, %struct.nlattr**, i32*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local i32 @__vxlan_dev_create(%struct.net*, %struct.net_device*, %struct.vxlan_config*, i32*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

declare dso_local %struct.net_device* @ERR_PTR(i32) #2

declare dso_local i32 @rtnl_configure_link(%struct.net_device*, i32*) #2

declare dso_local i32 @LIST_HEAD(i32) #2

declare dso_local i32 @vxlan_dellink(%struct.net_device*, i32*) #2

declare dso_local i32 @unregister_netdevice_many(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

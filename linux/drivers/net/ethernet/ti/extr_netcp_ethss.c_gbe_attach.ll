; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.device_node = type { i32 }
%struct.gbe_priv = type { i32, i32, i32 }
%struct.gbe_intf = type { %struct.gbe_intf*, i32, i32, %struct.gbe_priv*, i32, %struct.net_device* }

@.str = private unnamed_addr constant [30 x i8] c"interface node not available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@keystone_ethtool_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.net_device*, %struct.device_node*, i8**)* @gbe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_attach(i8* %0, %struct.net_device* %1, %struct.device_node* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.gbe_priv*, align 8
  %11 = alloca %struct.gbe_intf*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gbe_priv*
  store %struct.gbe_priv* %14, %struct.gbe_priv** %10, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %19 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %26 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(i32 %27, i32 40, i32 %28)
  %30 = bitcast i8* %29 to %struct.gbe_intf*
  store %struct.gbe_intf* %30, %struct.gbe_intf** %11, align 8
  %31 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %32 = icmp ne %struct.gbe_intf* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %114

36:                                               ; preds = %24
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %39 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %38, i32 0, i32 5
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %41 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %44 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %46 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %47 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %46, i32 0, i32 3
  store %struct.gbe_priv* %45, %struct.gbe_priv** %47, align 8
  %48 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %49 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kzalloc(i32 %50, i32 40, i32 %51)
  %53 = bitcast i8* %52 to %struct.gbe_intf*
  %54 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %55 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %54, i32 0, i32 0
  store %struct.gbe_intf* %53, %struct.gbe_intf** %55, align 8
  %56 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %57 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %56, i32 0, i32 0
  %58 = load %struct.gbe_intf*, %struct.gbe_intf** %57, align 8
  %59 = icmp ne %struct.gbe_intf* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %36
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %90

63:                                               ; preds = %36
  %64 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %65 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %66 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %65, i32 0, i32 0
  %67 = load %struct.gbe_intf*, %struct.gbe_intf** %66, align 8
  %68 = load %struct.device_node*, %struct.device_node** %8, align 8
  %69 = call i64 @init_slave(%struct.gbe_priv* %64, %struct.gbe_intf* %67, %struct.device_node* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %90

74:                                               ; preds = %63
  %75 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %76 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %79 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  store i32* @keystone_ethtool_ops, i32** %81, align 8
  %82 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %83 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %82, i32 0, i32 1
  %84 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %85 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %84, i32 0, i32 1
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %88 = bitcast %struct.gbe_intf* %87 to i8*
  %89 = load i8**, i8*** %9, align 8
  store i8* %88, i8** %89, align 8
  store i32 0, i32* %5, align 4
  br label %114

90:                                               ; preds = %71, %60
  %91 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %92 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %91, i32 0, i32 0
  %93 = load %struct.gbe_intf*, %struct.gbe_intf** %92, align 8
  %94 = icmp ne %struct.gbe_intf* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %97 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %100 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %99, i32 0, i32 0
  %101 = load %struct.gbe_intf*, %struct.gbe_intf** %100, align 8
  %102 = call i32 @devm_kfree(i32 %98, %struct.gbe_intf* %101)
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %105 = icmp ne %struct.gbe_intf* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  %108 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.gbe_intf*, %struct.gbe_intf** %11, align 8
  %111 = call i32 @devm_kfree(i32 %109, %struct.gbe_intf* %110)
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %74, %33, %17
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @init_slave(%struct.gbe_priv*, %struct.gbe_intf*, %struct.device_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.gbe_intf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

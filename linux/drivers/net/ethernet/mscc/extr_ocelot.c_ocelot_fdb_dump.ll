; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.net_device = type { i32 }
%struct.ocelot_port = type { i32 }
%struct.ocelot_dump_ctx = type { i32, %struct.netlink_callback*, %struct.sk_buff*, %struct.net_device* }
%struct.ocelot_mact_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)* @ocelot_fdb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_fdb_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.net_device* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocelot_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocelot_dump_ctx, align 8
  %16 = alloca %struct.ocelot_mact_entry, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %17)
  store %struct.ocelot_port* %18, %struct.ocelot_port** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %15, i32 0, i32 0
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %15, i32 0, i32 1
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  store %struct.netlink_callback* %23, %struct.netlink_callback** %22, align 8
  %24 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %15, i32 0, i32 2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %24, align 8
  %26 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %15, i32 0, i32 3
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %27, %struct.net_device** %26, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %60, %5
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 1024
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.ocelot_port*, %struct.ocelot_port** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ocelot_mact_read(%struct.ocelot_port* %36, i32 %37, i32 %38, %struct.ocelot_mact_entry* %16)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %64

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @ocelot_fdb_do_dump(%struct.ocelot_mact_entry* %16, %struct.ocelot_dump_ctx* %15)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %64

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %32

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %28

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63, %54, %48
  %65 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %15, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  ret i32 %68
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_mact_read(%struct.ocelot_port*, i32, i32, %struct.ocelot_mact_entry*) #1

declare dso_local i32 @ocelot_fdb_do_dump(%struct.ocelot_mact_entry*, %struct.ocelot_dump_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

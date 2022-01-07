; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_add_mdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_add_mdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj_port_mdb = type { i8*, i64 }
%struct.switchdev_trans = type { i32 }
%struct.ocelot_port = type { i32, i64, %struct.ocelot* }
%struct.ocelot = type { i32, i32 }
%struct.ocelot_multicast = type { i8*, i8, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENTRYTYPE_MACv4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj_port_mdb*, %struct.switchdev_trans*)* @ocelot_port_obj_add_mdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_obj_add_mdb(%struct.net_device* %0, %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.ocelot_port*, align 8
  %9 = alloca %struct.ocelot*, align 8
  %10 = alloca %struct.ocelot_multicast*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_obj_port_mdb** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %16)
  store %struct.ocelot_port* %17, %struct.ocelot_port** %8, align 8
  %18 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %19 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %18, i32 0, i32 2
  %20 = load %struct.ocelot*, %struct.ocelot** %19, align 8
  store %struct.ocelot* %20, %struct.ocelot** %9, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %26 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %32 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %36 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %37 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call %struct.ocelot_multicast* @ocelot_multicast_get(%struct.ocelot* %35, i8* %38, i64 %39)
  store %struct.ocelot_multicast* %40, %struct.ocelot_multicast** %10, align 8
  %41 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %42 = icmp ne %struct.ocelot_multicast* %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %34
  %44 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %45 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.ocelot_multicast* @devm_kzalloc(i32 %46, i32 24, i32 %47)
  store %struct.ocelot_multicast* %48, %struct.ocelot_multicast** %10, align 8
  %49 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %50 = icmp ne %struct.ocelot_multicast* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %127

54:                                               ; preds = %43
  %55 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %56 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %59 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i8* %57, i8* %60, i32 %61)
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %65 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %67 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %66, i32 0, i32 2
  %68 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %69 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %54, %34
  %72 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %73 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i8* %24, i8* %74, i32 %75)
  %77 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %77, align 16
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %71
  %81 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %82 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 8
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 0
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %86, i8* %87, align 2
  %88 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %89 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %88, i32 0, i32 1
  %90 = load i8, i8* %89, align 8
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %93, i8* %94, align 1
  %95 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @ocelot_mact_forget(%struct.ocelot* %95, i8* %24, i64 %96)
  br label %98

98:                                               ; preds = %80, %71
  %99 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %100 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @BIT(i32 %101)
  %103 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %104 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 8
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %102
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 8
  %109 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %110 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 8
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 0
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %114, i8* %115, align 2
  %116 = load %struct.ocelot_multicast*, %struct.ocelot_multicast** %10, align 8
  %117 = getelementptr inbounds %struct.ocelot_multicast, %struct.ocelot_multicast* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %121, i8* %122, align 1
  %123 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i32, i32* @ENTRYTYPE_MACv4, align 4
  %126 = call i32 @ocelot_mact_learn(%struct.ocelot* %123, i32 0, i8* %24, i64 %124, i32 %125)
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %127

127:                                              ; preds = %98, %51
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.ocelot_multicast* @ocelot_multicast_get(%struct.ocelot*, i8*, i64) #1

declare dso_local %struct.ocelot_multicast* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ocelot_mact_forget(%struct.ocelot*, i8*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ocelot_mact_learn(%struct.ocelot*, i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

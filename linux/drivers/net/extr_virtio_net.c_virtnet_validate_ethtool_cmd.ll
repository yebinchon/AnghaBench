; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_validate_ethtool_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_validate_ethtool_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i64 }

@PORT_OTHER = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_link_ksettings*)* @virtnet_validate_ethtool_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_validate_ethtool_cmd(%struct.ethtool_link_ksettings* %0) #0 {
  %2 = alloca %struct.ethtool_link_ksettings*, align 8
  %3 = alloca %struct.ethtool_link_ksettings, align 8
  %4 = alloca %struct.ethtool_link_ksettings, align 8
  store %struct.ethtool_link_ksettings* %0, %struct.ethtool_link_ksettings** %2, align 8
  %5 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %2, align 8
  %6 = bitcast %struct.ethtool_link_ksettings* %3 to i8*
  %7 = bitcast %struct.ethtool_link_ksettings* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 56, i1 false)
  %8 = bitcast %struct.ethtool_link_ksettings* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @PORT_OTHER, align 4
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @advertising, align 4
  %15 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %3, i32 %14)
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %4, i32 0, i32 1
  %24 = call i32 @memcmp(%struct.TYPE_5__* %22, %struct.TYPE_5__* %23, i32 40)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %31 = call i64 @bitmap_empty(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %38 = call i64 @bitmap_empty(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %45 = call i64 @bitmap_empty(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %33, %26, %1
  %48 = phi i1 [ false, %33 ], [ false, %26 ], [ false, %1 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #2

declare dso_local i32 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #2

declare dso_local i64 @bitmap_empty(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

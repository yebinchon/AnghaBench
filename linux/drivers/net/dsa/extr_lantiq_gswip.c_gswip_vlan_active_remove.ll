; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_active_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_active_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.gswip_pce_table_entry = type { i32, i32, i32, i32 }

@GSWIP_TABLE_ACTIVE_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to delete active VLAN: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, i32)* @gswip_vlan_active_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_vlan_active_remove(%struct.gswip_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gswip_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_pce_table_entry, align 4
  %6 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.gswip_pce_table_entry* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @GSWIP_TABLE_ACTIVE_VLAN, align 4
  %11 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %5, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %14 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %13, %struct.gswip_pce_table_entry* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %19 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %25 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

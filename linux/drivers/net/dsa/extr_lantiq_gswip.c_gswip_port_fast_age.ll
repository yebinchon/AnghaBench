; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_fast_age.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_fast_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i32, i32*, i32, i32 }

@GSWIP_TABLE_MAC_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to read mac bridge: %d\0A\00", align 1
@GSWIP_TABLE_MAC_BRIDGE_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to write mac bridge: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @gswip_port_fast_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_port_fast_age(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_priv*, align 8
  %6 = alloca %struct.gswip_pce_table_entry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %10, align 8
  store %struct.gswip_priv* %11, %struct.gswip_priv** %5, align 8
  %12 = bitcast %struct.gswip_pce_table_entry* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %69, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2048
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  %17 = load i32, i32* @GSWIP_TABLE_MAC_BRIDGE, align 4
  %18 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %22 = call i32 @gswip_pce_table_entry_read(%struct.gswip_priv* %21, %struct.gswip_pce_table_entry* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %27 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %72

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %69

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GSWIP_TABLE_MAC_BRIDGE_STATIC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %69

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GENMASK(i32 7, i32 4)
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %69

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %6, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %59 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %58, %struct.gswip_pce_table_entry* %6)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %64 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %72

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %55, %44, %35
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %13

72:                                               ; preds = %25, %62, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gswip_pce_table_entry_read(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

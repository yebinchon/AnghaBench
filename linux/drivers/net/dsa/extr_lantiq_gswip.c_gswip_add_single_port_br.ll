; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_add_single_port_br.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_add_single_port_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gswip_pce_table_entry = type { i32, i32*, i32, i32, i64*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"single port for %i supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GSWIP_TABLE_ACTIVE_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to write active VLAN: %d\0A\00", align 1
@GSWIP_TABLE_VLAN_MAPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to write VLAN mapping: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, i32, i32)* @gswip_add_single_port_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_add_single_port_br(%struct.gswip_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gswip_pce_table_entry, align 8
  %9 = alloca %struct.gswip_pce_table_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.gswip_pce_table_entry* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = bitcast %struct.gswip_pce_table_entry* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %16 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %21 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %30 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %99

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @GSWIP_TABLE_ACTIVE_VLAN, align 4
  %41 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %53 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %52, %struct.gswip_pce_table_entry* %8)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %36
  %57 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %58 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %99

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %99

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @GSWIP_TABLE_VLAN_MAPPING, align 4
  %72 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %9, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = or i32 %77, %79
  %81 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %9, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %9, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 0, i32* %86, align 4
  %87 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %88 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %87, %struct.gswip_pce_table_entry* %9)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %67
  %92 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %93 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %91, %66, %56, %28
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

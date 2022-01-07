; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_active_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_active_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8*, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i32*, i32, i8**, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GSWIP_TABLE_ACTIVE_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to write active VLAN: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.net_device*, i32, i8*)* @gswip_vlan_active_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_vlan_active_create(%struct.gswip_priv* %0, %struct.net_device* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gswip_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gswip_pce_table_entry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = bitcast %struct.gswip_pce_table_entry* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %17 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %42, %4
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %25 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %31 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %12, align 4
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %22

45:                                               ; preds = %39, %22
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %107

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @GSWIP_TABLE_ACTIVE_VLAN, align 4
  %60 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 3
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %71 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %70, %struct.gswip_pce_table_entry* %10)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %56
  %75 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %76 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %107

81:                                               ; preds = %56
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %84 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store %struct.net_device* %82, %struct.net_device** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %92 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* %90, i8** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %100 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %81, %74, %48
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

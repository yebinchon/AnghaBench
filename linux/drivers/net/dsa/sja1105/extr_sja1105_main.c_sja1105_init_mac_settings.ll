; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_mac_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_mac_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i32, %struct.sja1105_mac_config_entry*, %struct.TYPE_4__* }
%struct.sja1105_mac_config_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SJA1105_SPEED_AUTO = common dso_local global i32 0, align 4
@BLK_IDX_MAC_CONFIG = common dso_local global i64 0, align 8
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_mac_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_mac_settings(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_mac_config_entry, align 4
  %5 = alloca %struct.sja1105_mac_config_entry*, align 8
  %6 = alloca %struct.sja1105_table*, align 8
  %7 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %8 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 0
  store i32 255, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 5
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 6
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 7
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 8
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 9
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 10
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 11
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 12
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 13
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 14
  %23 = load i32, i32* @SJA1105_SPEED_AUTO, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 15
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 16
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 17
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %4, i32 0, i32 18
  store i32 63, i32* %27, align 4
  %28 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %29 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.sja1105_table*, %struct.sja1105_table** %30, align 8
  %32 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %33 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %31, i64 %32
  store %struct.sja1105_table* %33, %struct.sja1105_table** %6, align 8
  %34 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %35 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %40 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %39, i32 0, i32 1
  %41 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %40, align 8
  %42 = call i32 @kfree(%struct.sja1105_mac_config_entry* %41)
  %43 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %44 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %1
  %46 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %47 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %48 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.sja1105_mac_config_entry* @kcalloc(i32 %46, i32 %51, i32 %52)
  %54 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %55 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %54, i32 0, i32 1
  store %struct.sja1105_mac_config_entry* %53, %struct.sja1105_mac_config_entry** %55, align 8
  %56 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %57 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %56, i32 0, i32 1
  %58 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %57, align 8
  %59 = icmp ne %struct.sja1105_mac_config_entry* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %109

63:                                               ; preds = %45
  %64 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %65 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %66 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %68 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %67, i32 0, i32 1
  %69 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %68, align 8
  store %struct.sja1105_mac_config_entry* %69, %struct.sja1105_mac_config_entry** %5, align 8
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %105, %63
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %70
  %75 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %75, i64 %77
  %79 = bitcast %struct.sja1105_mac_config_entry* %78 to i8*
  %80 = bitcast %struct.sja1105_mac_config_entry* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 76, i1 false)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %83 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dsa_upstream_port(i32 %84, i32 %85)
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %74
  %89 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %92, i32 0, i32 8
  store i32 1, i32* %93, align 4
  %94 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %94, i64 %96
  %98 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %97, i32 0, i32 10
  store i32 1, i32* %98, align 4
  %99 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %99, i64 %101
  %103 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %102, i32 0, i32 9
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %88, %74
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %70

108:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %60
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @kfree(%struct.sja1105_mac_config_entry*) #1

declare dso_local %struct.sja1105_mac_config_entry* @kcalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dsa_upstream_port(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

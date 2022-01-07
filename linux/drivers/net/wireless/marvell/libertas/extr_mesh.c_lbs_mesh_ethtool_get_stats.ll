; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_ethtool_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_ethtool_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ethtool_stats = type { i32 }
%struct.cmd_ds_mesh_access = type { i32* }

@CMD_ACT_MESH_GET_STATS = common dso_local global i32 0, align 4
@MESH_STATS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_mesh_ethtool_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i8** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca %struct.cmd_ds_mesh_access, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %7, align 8
  %13 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %14 = load i32, i32* @CMD_ACT_MESH_GET_STATS, align 4
  %15 = call i32 @lbs_mesh_access(%struct.lbs_private* %13, i32 %14, %struct.cmd_ds_mesh_access* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* @MESH_STATS_NUM, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i8** %19, i32 0, i32 %23)
  br label %138

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  store i8* %30, i8** %33, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i8* %38, i8** %41, align 8
  %42 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le32_to_cpu(i32 %61)
  %63 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %8, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le32_to_cpu(i32 %85)
  %87 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %91 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 7
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %6, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %97 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %6, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %109 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** %6, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %115 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %6, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %121 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %6, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %127 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 6
  store i8* %129, i8** %131, align 8
  %132 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %133 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i8**, i8*** %6, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 7
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %25, %18
  ret void
}

declare dso_local i32 @lbs_mesh_access(%struct.lbs_private*, i32, %struct.cmd_ds_mesh_access*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

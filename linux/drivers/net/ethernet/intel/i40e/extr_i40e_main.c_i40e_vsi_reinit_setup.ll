; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_reinit_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_reinit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i64, i32, i32, i32*, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_10__, %struct.TYPE_9__**, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"failed to get tracking for %d queues for VSI %d err %d\0A\00", align 1
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40e_vsi* (%struct.i40e_vsi*)* @i40e_vsi_reinit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40e_vsi* @i40e_vsi_reinit_setup(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = icmp ne %struct.i40e_vsi* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %2, align 8
  br label %168

11:                                               ; preds = %1
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 7
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %5, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @i40e_put_lump(i32 %17, i32 %20, i32 %23)
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %26 = call i32 @i40e_vsi_clear_rings(%struct.i40e_vsi* %25)
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %28 = call i32 @i40e_vsi_free_arrays(%struct.i40e_vsi* %27, i32 0)
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %30 = call i32 @i40e_set_num_rings_in_vsi(%struct.i40e_vsi* %29)
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %32 = call i32 @i40e_vsi_alloc_arrays(%struct.i40e_vsi* %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %11
  br label %165

36:                                               ; preds = %11
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %41 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  %45 = mul nsw i32 %39, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @i40e_get_lump(%struct.i40e_pf* %46, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %36
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %66)
  br label %165

68:                                               ; preds = %36
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %71 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %73, align 8
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %74, i64 %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %6, align 8
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %84, align 8
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %94 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %97 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %97, align 8
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %95, i32* %104, align 8
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 2
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @i40e_vsi_config_tc(%struct.TYPE_9__* %112, i64 %113)
  %115 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %116 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @I40E_VSI_MAIN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %68
  %121 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %122 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %123 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @i40e_rm_default_mac_filter(%struct.i40e_vsi* %121, i32 %126)
  br label %128

128:                                              ; preds = %120, %68
  %129 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %130 = call i32 @i40e_alloc_rings(%struct.i40e_vsi* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %138

134:                                              ; preds = %128
  %135 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %136 = call i32 @i40e_vsi_map_rings_to_vectors(%struct.i40e_vsi* %135)
  %137 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  store %struct.i40e_vsi* %137, %struct.i40e_vsi** %2, align 8
  br label %168

138:                                              ; preds = %133
  %139 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %140 = call i32 @i40e_vsi_free_q_vectors(%struct.i40e_vsi* %139)
  %141 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %142 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %147 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %146, i32 0, i32 3
  store i32 0, i32* %147, align 8
  %148 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %149 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @unregister_netdev(i32* %150)
  %152 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %153 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @free_netdev(i32* %154)
  %156 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %157 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %156, i32 0, i32 5
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %145, %138
  %159 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %160 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %159, i32 0, i32 1
  %161 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %162 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @i40e_aq_delete_element(%struct.TYPE_10__* %160, i32 %163, i32* null)
  br label %165

165:                                              ; preds = %158, %57, %35
  %166 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %167 = call i32 @i40e_vsi_clear(%struct.i40e_vsi* %166)
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %2, align 8
  br label %168

168:                                              ; preds = %165, %134, %10
  %169 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  ret %struct.i40e_vsi* %169
}

declare dso_local i32 @i40e_put_lump(i32, i32, i32) #1

declare dso_local i32 @i40e_vsi_clear_rings(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_arrays(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_set_num_rings_in_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_alloc_arrays(%struct.i40e_vsi*, i32) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_get_lump(%struct.i40e_pf*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @i40e_vsi_config_tc(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @i40e_rm_default_mac_filter(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_alloc_rings(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_map_rings_to_vectors(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_q_vectors(%struct.i40e_vsi*) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @i40e_aq_delete_element(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @i40e_vsi_clear(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

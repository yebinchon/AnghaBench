; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_metadata_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_metadata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@nfp_flower_table_params = common dso_local global i32 0, align 4
@stats_ctx_table_params = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_ENTRY_RS = common dso_local global i64 0, align 8
@NFP_FLOWER_MASK_ELEMENT_RS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFP_FL_STATS_ELEM_RS = common dso_local global i32 0, align 4
@NFP_FL_STAT_ID_STAT = common dso_local global i32 0, align 4
@NFP_FL_STAT_ID_MU_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_metadata_init(%struct.nfp_app* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %8, align 8
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %15 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hash_init(i32 %16)
  %18 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %19 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %18, i32 0, i32 0
  %20 = call i32 @rhashtable_init(i32* %19, i32* @nfp_flower_table_params)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %146

25:                                               ; preds = %3
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 1
  %28 = call i32 @rhashtable_init(i32* %27, i32* @stats_ctx_table_params)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %140

32:                                               ; preds = %25
  %33 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %33, i32 0, i32 7
  %35 = call i32 @get_random_bytes(i32* %34, i32 4)
  %36 = load i64, i64* @NFP_FLOWER_MASK_ENTRY_RS, align 8
  %37 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmalloc_array(i64 %36, i32 %37, i32 %38)
  %40 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %41 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %32
  br label %136

51:                                               ; preds = %32
  %52 = load i64, i64* @NFP_FLOWER_MASK_ENTRY_RS, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %55 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* @NFP_FLOWER_MASK_ENTRY_RS, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kmalloc_array(i64 %57, i32 1, i32 %58)
  %60 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %61 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %64 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %51
  br label %129

69:                                               ; preds = %51
  %70 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %71 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %72 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @array_size(i32 %70, i32 %73)
  %75 = call i32 @vmalloc(i32 %74)
  %76 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %77 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %81 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %69
  br label %123

87:                                               ; preds = %69
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @div_u64(i32 %88, i32 %89)
  %91 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %92 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @NFP_FL_STAT_ID_STAT, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @FIELD_PREP(i32 %94, i32 %95)
  %97 = load i32, i32* @NFP_FL_STAT_ID_MU_NUM, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub i32 %98, 1
  %100 = call i32 @FIELD_PREP(i32 %97, i32 %99)
  %101 = or i32 %96, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @kvmalloc_array(i32 %102, i32 4, i32 %103)
  %105 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %106 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %108 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %87
  br label %116

112:                                              ; preds = %87
  %113 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %114 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %113, i32 0, i32 4
  %115 = call i32 @spin_lock_init(i32* %114)
  store i32 0, i32* %4, align 4
  br label %146

116:                                              ; preds = %111
  %117 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %118 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @vfree(i32 %121)
  br label %123

123:                                              ; preds = %116, %86
  %124 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %125 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @kfree(i8* %127)
  br label %129

129:                                              ; preds = %123, %68
  %130 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %131 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @kfree(i8* %134)
  br label %136

136:                                              ; preds = %129, %50
  %137 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %138 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %137, i32 0, i32 1
  %139 = call i32 @rhashtable_destroy(i32* %138)
  br label %140

140:                                              ; preds = %136, %31
  %141 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %142 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %141, i32 0, i32 0
  %143 = call i32 @rhashtable_destroy(i32* %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %112, %23
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i8* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

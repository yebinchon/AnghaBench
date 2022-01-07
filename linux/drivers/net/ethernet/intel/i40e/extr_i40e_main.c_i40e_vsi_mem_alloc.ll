; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32, i32, %struct.i40e_vsi**, i32 }
%struct.i40e_vsi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.i40e_pf* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_DEFAULT_IRQ_WORK = common dso_local global i32 0, align 4
@i40e_msix_clean_rings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32)* @i40e_vsi_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_mem_alloc(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 4
  %26 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %26, i64 %28
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %29, align 8
  %31 = icmp ne %struct.i40e_vsi* %30, null
  br label %32

32:                                               ; preds = %23, %17
  %33 = phi i1 [ false, %17 ], [ %31, %23 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %17

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 4
  %53 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %53, i64 %55
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %56, align 8
  %58 = icmp ne %struct.i40e_vsi* %57, null
  br label %59

59:                                               ; preds = %50, %44
  %60 = phi i1 [ false, %44 ], [ %58, %50 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %44

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 4
  %74 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %74, i64 %76
  %78 = load %struct.i40e_vsi*, %struct.i40e_vsi** %77, align 8
  %79 = icmp ne %struct.i40e_vsi* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %7, align 4
  br label %85

82:                                               ; preds = %71, %65
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %198

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %89 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.i40e_vsi* @kzalloc(i32 72, i32 %90)
  store %struct.i40e_vsi* %91, %struct.i40e_vsi** %6, align 8
  %92 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %93 = icmp ne %struct.i40e_vsi* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %198

97:                                               ; preds = %85
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %100 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %102 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %103 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %102, i32 0, i32 12
  store %struct.i40e_pf* %101, %struct.i40e_pf** %103, align 8
  %104 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %105 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %106 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @set_bit(i32 %104, i32 %107)
  %109 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %110 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %109, i32 0, i32 10
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %113 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %115 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %114, i32 0, i32 9
  store i64 0, i64* %115, align 8
  %116 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @I40E_VSI_MAIN, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %97
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  br label %127

126:                                              ; preds = %97
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i32 [ %125, %122 ], [ 64, %126 ]
  %129 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %130 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %132 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %131, i32 0, i32 3
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* @I40E_DEFAULT_IRQ_WORK, align 4
  %134 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %135 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 8
  %136 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %137 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @hash_init(i32 %138)
  %140 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %141 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %140, i32 0, i32 4
  store i32 0, i32* %141, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* @I40E_VSI_MAIN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %127
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i32 @bitmap_zalloc(i32 %149, i32 %150)
  %152 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %153 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %155 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %146
  br label %187

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %127
  %161 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %162 = call i32 @i40e_set_num_rings_in_vsi(%struct.i40e_vsi* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %187

166:                                              ; preds = %160
  %167 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %168 = call i32 @i40e_vsi_alloc_arrays(%struct.i40e_vsi* %167, i32 1)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %187

172:                                              ; preds = %166
  %173 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %174 = load i32, i32* @i40e_msix_clean_rings, align 4
  %175 = call i32 @i40e_vsi_setup_irqhandler(%struct.i40e_vsi* %173, i32 %174)
  %176 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %177 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %176, i32 0, i32 6
  %178 = call i32 @spin_lock_init(i32* %177)
  %179 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %180 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %181 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %180, i32 0, i32 4
  %182 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %182, i64 %184
  store %struct.i40e_vsi* %179, %struct.i40e_vsi** %185, align 8
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %5, align 4
  br label %198

187:                                              ; preds = %171, %165, %158
  %188 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %189 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @bitmap_free(i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %195 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %197 = call i32 @kfree(%struct.i40e_vsi* %196)
  br label %198

198:                                              ; preds = %187, %172, %94, %82
  %199 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %200 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %199, i32 0, i32 3
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i40e_vsi* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @i40e_set_num_rings_in_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_alloc_arrays(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_vsi_setup_irqhandler(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kfree(%struct.i40e_vsi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

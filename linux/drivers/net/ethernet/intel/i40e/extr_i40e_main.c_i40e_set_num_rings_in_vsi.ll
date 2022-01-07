; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_num_rings_in_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_num_rings_in_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, i8*, i8*, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, i32, i32, i32, i32, i32 }

@I40E_DEFAULT_NUM_DESCRIPTORS = common dso_local global i32 0, align 4
@I40E_REQ_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_FDIR_RING_COUNT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_set_num_rings_in_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_num_rings_in_vsi(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %6 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %5, i32 0, i32 5
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  store %struct.i40e_pf* %7, %struct.i40e_pf** %4, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %134 [
    i32 130, label %11
    i32 131, label %55
    i32 128, label %73
    i32 129, label %106
  ]

11:                                               ; preds = %1
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %23 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %24 = call i8* @ALIGN(i32 %22, i32 %23)
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %21, %11
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %34 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %35 = call i8* @ALIGN(i32 %33, i32 %34)
  %36 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %54

51:                                               ; preds = %38
  %52 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %138

55:                                               ; preds = %1
  %56 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @I40E_FDIR_RING_COUNT, align 4
  %59 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %60 = call i8* @ALIGN(i32 %58, i32 %59)
  %61 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %62 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @I40E_FDIR_RING_COUNT, align 4
  %64 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %65 = call i8* @ALIGN(i32 %63, i32 %64)
  %66 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %138

73:                                               ; preds = %1
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %85 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %86 = call i8* @ALIGN(i32 %84, i32 %85)
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %83, %73
  %90 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %96 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %97 = call i8* @ALIGN(i32 %95, i32 %96)
  %98 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %99 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %105 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %138

106:                                              ; preds = %1
  %107 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %108 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %113 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %118 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %119 = call i8* @ALIGN(i32 %117, i32 %118)
  %120 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %121 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %106
  %123 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %124 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @I40E_DEFAULT_NUM_DESCRIPTORS, align 4
  %129 = load i32, i32* @I40E_REQ_DESCRIPTOR_MULTIPLE, align 4
  %130 = call i8* @ALIGN(i32 %128, i32 %129)
  %131 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %132 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %127, %122
  br label %138

134:                                              ; preds = %1
  %135 = call i32 @WARN_ON(i32 1)
  %136 = load i32, i32* @ENODATA, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %139

138:                                              ; preds = %133, %100, %55, %54
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i64, i64, i32, %struct.i40e_vsi**, %struct.TYPE_2__* }
%struct.i40e_vsi = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"can't remove VEB %d with %d VSIs left\0A\00", align 1
@I40E_VSI_FLAG_VEB_OWNER = common dso_local global i32 0, align 4
@I40E_NO_VEB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_veb_release(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %7, i32 0, i32 3
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 4
  %19 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %19, i64 %21
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %22, align 8
  %24 = icmp ne %struct.i40e_vsi* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 4
  %28 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %28, i64 %30
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %31, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 4
  %44 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %44, i64 %46
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %47, align 8
  store %struct.i40e_vsi* %48, %struct.i40e_vsi** %3, align 8
  br label %49

49:                                               ; preds = %39, %25, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 5
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %62 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64)
  br label %135

66:                                               ; preds = %53
  %67 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %74 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %66
  %78 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %79 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %82 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %84 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load i32, i32* @I40E_NO_VEB, align 4
  %92 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %93 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %100

94:                                               ; preds = %77
  %95 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %96 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %99 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %90
  br label %126

101:                                              ; preds = %66
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 4
  %104 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %103, align 8
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %104, i64 %107
  %109 = load %struct.i40e_vsi*, %struct.i40e_vsi** %108, align 8
  %110 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %113 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 4
  %116 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %115, align 8
  %117 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %118 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %116, i64 %119
  %121 = load %struct.i40e_vsi*, %struct.i40e_vsi** %120, align 8
  %122 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %125 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %101, %100
  %127 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %127, i32 0, i32 3
  %129 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %130 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @i40e_aq_delete_element(i32* %128, i64 %131, i32* null)
  %133 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %134 = call i32 @i40e_veb_clear(%struct.i40e_veb* %133)
  br label %135

135:                                              ; preds = %126, %56
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i64, i32) #1

declare dso_local i32 @i40e_aq_delete_element(i32*, i64, i32*) #1

declare dso_local i32 @i40e_veb_clear(%struct.i40e_veb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

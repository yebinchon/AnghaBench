; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_switch_branch_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_switch_branch_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, i64, i64, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_veb**, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 }

@I40E_MAX_VEB = common dso_local global i32 0, align 4
@I40E_VSI_FLAG_VEB_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_veb*)* @i40e_switch_branch_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_switch_branch_release(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  %7 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %7, i32 0, i32 3
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %3, align 8
  %10 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %53, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @I40E_MAX_VEB, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 1
  %23 = load %struct.i40e_veb**, %struct.i40e_veb*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %23, i64 %25
  %27 = load %struct.i40e_veb*, %struct.i40e_veb** %26, align 8
  %28 = icmp ne %struct.i40e_veb* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %53

30:                                               ; preds = %20
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 1
  %33 = load %struct.i40e_veb**, %struct.i40e_veb*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %33, i64 %35
  %37 = load %struct.i40e_veb*, %struct.i40e_veb** %36, align 8
  %38 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 1
  %47 = load %struct.i40e_veb**, %struct.i40e_veb*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %47, i64 %49
  %51 = load %struct.i40e_veb*, %struct.i40e_veb** %50, align 8
  call void @i40e_switch_branch_release(%struct.i40e_veb* %51)
  br label %52

52:                                               ; preds = %44, %30
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %16

56:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %108, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %57
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = icmp ne %struct.TYPE_2__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %108

73:                                               ; preds = %63
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %73
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %101, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = call i32 @i40e_vsi_release(%struct.TYPE_2__* %105)
  br label %107

107:                                              ; preds = %98, %85, %73
  br label %108

108:                                              ; preds = %107, %72
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %57

111:                                              ; preds = %57
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  %114 = load %struct.i40e_veb**, %struct.i40e_veb*** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %114, i64 %115
  %117 = load %struct.i40e_veb*, %struct.i40e_veb** %116, align 8
  %118 = icmp ne %struct.i40e_veb* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 1
  %122 = load %struct.i40e_veb**, %struct.i40e_veb*** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %122, i64 %123
  %125 = load %struct.i40e_veb*, %struct.i40e_veb** %124, align 8
  %126 = call i32 @i40e_veb_release(%struct.i40e_veb* %125)
  br label %127

127:                                              ; preds = %119, %111
  ret void
}

declare dso_local i32 @i40e_vsi_release(%struct.TYPE_2__*) #1

declare dso_local i32 @i40e_veb_release(%struct.i40e_veb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

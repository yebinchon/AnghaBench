; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, i64, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_2__**, %struct.i40e_veb** }
%struct.TYPE_2__ = type { i64 }

@I40E_MAX_VEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_veb*, i32)* @i40e_veb_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_veb_link_event(%struct.i40e_veb* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_veb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i40e_veb*, %struct.i40e_veb** %3, align 8
  %8 = icmp ne %struct.i40e_veb* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.i40e_veb*, %struct.i40e_veb** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %10, i32 0, i32 2
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %13 = icmp ne %struct.i40e_pf* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %103

15:                                               ; preds = %9
  %16 = load %struct.i40e_veb*, %struct.i40e_veb** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %16, i32 0, i32 2
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %56, %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @I40E_MAX_VEB, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 2
  %26 = load %struct.i40e_veb**, %struct.i40e_veb*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %26, i64 %28
  %30 = load %struct.i40e_veb*, %struct.i40e_veb** %29, align 8
  %31 = icmp ne %struct.i40e_veb* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %23
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 2
  %35 = load %struct.i40e_veb**, %struct.i40e_veb*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %35, i64 %37
  %39 = load %struct.i40e_veb*, %struct.i40e_veb** %38, align 8
  %40 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i40e_veb*, %struct.i40e_veb** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 2
  %49 = load %struct.i40e_veb**, %struct.i40e_veb*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %49, i64 %51
  %53 = load %struct.i40e_veb*, %struct.i40e_veb** %52, align 8
  %54 = load i32, i32* %4, align 4
  call void @i40e_veb_link_event(%struct.i40e_veb* %53, i32 %54)
  br label %55

55:                                               ; preds = %46, %32, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %19

59:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %99

75:                                               ; preds = %66
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.i40e_veb*, %struct.i40e_veb** %3, align 8
  %86 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %75
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @i40e_vsi_link_event(%struct.TYPE_2__* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %75, %66
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %60

103:                                              ; preds = %14, %60
  ret void
}

declare dso_local i32 @i40e_vsi_link_event(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

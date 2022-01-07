; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_put_qs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_put_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i8**, i8**, %struct.ice_pf* }
%struct.ice_pf = type { i32, i32, i32 }

@ICE_INVAL_Q_INDEX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_vsi_put_qs(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %6 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %5, i32 0, i32 4
  %7 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  store %struct.ice_pf* %7, %struct.ice_pf** %3, align 8
  %8 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 3
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clear_bit(i8* %24, i32 %27)
  %29 = load i8*, i8** @ICE_INVAL_Q_INDEX, align 8
  %30 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %31 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %30, i32 0, i32 3
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %29, i8** %35, align 8
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %11

39:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %43 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %48 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clear_bit(i8* %53, i32 %56)
  %58 = load i8*, i8** @ICE_INVAL_Q_INDEX, align 8
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %60 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %70 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

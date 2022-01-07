; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 (i32, i8*)*, i32, i32 (i32, i8*)*, i32, i32 (i32, i8*)* }

@BFA_STATUS_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_cee_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_cee*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_cee*
  store %struct.bfa_cee* %7, %struct.bfa_cee** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %94 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %16 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** %22, align 8
  %24 = icmp ne i32 (i32, i8*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %27 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32 (i32, i8*)*, i32 (i32, i8*)** %28, align 8
  %30 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %35 = call i32 %29(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %25, %14
  br label %37

37:                                               ; preds = %36, %9
  %38 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %44 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32 (i32, i8*)*, i32 (i32, i8*)** %50, align 8
  %52 = icmp ne i32 (i32, i8*)* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32 (i32, i8*)*, i32 (i32, i8*)** %56, align 8
  %58 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %63 = call i32 %57(i32 %61, i8* %62)
  br label %64

64:                                               ; preds = %53, %42
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %72 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %73 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %75 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %77 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (i32, i8*)*, i32 (i32, i8*)** %78, align 8
  %80 = icmp ne i32 (i32, i8*)* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %83 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (i32, i8*)*, i32 (i32, i8*)** %84, align 8
  %86 = load %struct.bfa_cee*, %struct.bfa_cee** %5, align 8
  %87 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** @BFA_STATUS_FAILED, align 8
  %91 = call i32 %85(i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %81, %70
  br label %93

93:                                               ; preds = %92, %65
  br label %95

94:                                               ; preds = %2
  br label %95

95:                                               ; preds = %94, %93
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

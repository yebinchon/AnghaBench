; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_set_lna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_set_lna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pt3_adapter = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pt3_board* }
%struct.pt3_board = type { i32, i32 }

@LNA_AUTO = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @pt3_set_lna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_set_lna(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.pt3_adapter*, align 8
  %5 = alloca %struct.pt3_board*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = call %struct.pt3_adapter* @pt3_find_adapter(%struct.dvb_frontend* %8)
  store %struct.pt3_adapter* %9, %struct.pt3_adapter** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @LNA_AUTO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.pt3_adapter*, %struct.pt3_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %17
  %25 = load %struct.pt3_adapter*, %struct.pt3_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.pt3_board*, %struct.pt3_board** %27, align 8
  store %struct.pt3_board* %28, %struct.pt3_board** %5, align 8
  %29 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %30 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %29, i32 0, i32 1
  %31 = call i64 @mutex_lock_interruptible(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ERESTARTSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %24
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %41 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %46 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %54 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %59 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %61 = call i32 @pt3_set_tuner_power(%struct.pt3_board* %60, i32 1, i32 1)
  store i32 %61, i32* %7, align 4
  br label %77

62:                                               ; preds = %52, %49
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %67 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %72 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %74 = call i32 @pt3_set_tuner_power(%struct.pt3_board* %73, i32 1, i32 0)
  store i32 %74, i32* %7, align 4
  br label %76

75:                                               ; preds = %65, %62
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.pt3_board*, %struct.pt3_board** %5, align 8
  %79 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = load %struct.pt3_adapter*, %struct.pt3_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %77, %33, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.pt3_adapter* @pt3_find_adapter(%struct.dvb_frontend*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pt3_set_tuner_power(%struct.pt3_board*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_isr_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_isr_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_vec_isr_legacy(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aq_vec_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.aq_vec_s*
  store %struct.aq_vec_s* %10, %struct.aq_vec_s** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %12 = icmp ne %struct.aq_vec_s* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %17 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*)*, i32 (i32, i32*)** %19, align 8
  %21 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %22 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %34 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %39 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %42 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = call i32 %37(i32 %40, i32 %45)
  %47 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %48 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %47, i32 0, i32 2
  %49 = call i32 @napi_schedule(i32* %48)
  br label %61

50:                                               ; preds = %29
  %51 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %52 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load %struct.aq_vec_s*, %struct.aq_vec_s** %6, align 8
  %57 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58, i32 1)
  %60 = load i32, i32* @IRQ_NONE, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %32
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %50, %27, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

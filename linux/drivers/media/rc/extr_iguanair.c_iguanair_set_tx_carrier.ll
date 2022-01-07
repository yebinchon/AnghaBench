; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.iguanair* }
%struct.iguanair = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @iguanair_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_set_tx_carrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iguanair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  %12 = load %struct.iguanair*, %struct.iguanair** %11, align 8
  store %struct.iguanair* %12, %struct.iguanair** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 25000
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 150000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %23 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %27 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %33 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i32 @DIV_ROUND_CLOSEST(i32 24000000, i32 %35)
  %37 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %38 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 4, %41
  %43 = and i32 %42, 3
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 7
  %47 = sub nsw i32 %44, %46
  %48 = sdiv i32 %47, 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 4, %49
  %51 = mul nsw i32 %50, 2
  %52 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %53 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 110, %56
  %58 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %59 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %30, %21
  %63 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  %64 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

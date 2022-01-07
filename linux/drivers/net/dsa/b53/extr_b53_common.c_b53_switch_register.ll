; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"found switch: %s, rev %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_switch_register(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  %5 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %6 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %16 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %18 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %9, %1
  %25 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %26 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %31 = call i64 @b53_switch_detect(%struct.b53_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %29, %24
  %37 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %38 = call i32 @b53_switch_init(%struct.b53_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %45 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %48 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %52 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dsa_register_switch(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %41, %33
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @b53_switch_detect(%struct.b53_device*) #1

declare dso_local i32 @b53_switch_init(%struct.b53_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dsa_register_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

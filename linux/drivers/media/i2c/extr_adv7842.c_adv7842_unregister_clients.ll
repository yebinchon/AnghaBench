; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_unregister_clients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_unregister_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_state = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @adv7842_unregister_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7842_unregister_clients(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv7842_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %4)
  store %struct.adv7842_state* %5, %struct.adv7842_state** %3, align 8
  %6 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %7 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %6, i32 0, i32 10
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @i2c_unregister_device(i32* %8)
  %10 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %11 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @i2c_unregister_device(i32* %12)
  %14 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %15 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @i2c_unregister_device(i32* %16)
  %18 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %19 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @i2c_unregister_device(i32* %20)
  %22 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %23 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @i2c_unregister_device(i32* %24)
  %26 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %27 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @i2c_unregister_device(i32* %28)
  %30 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %31 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @i2c_unregister_device(i32* %32)
  %34 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %35 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @i2c_unregister_device(i32* %36)
  %38 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %39 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @i2c_unregister_device(i32* %40)
  %42 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %43 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @i2c_unregister_device(i32* %44)
  %46 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %47 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @i2c_unregister_device(i32* %48)
  %50 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %51 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %50, i32 0, i32 10
  store i32* null, i32** %51, align 8
  %52 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %53 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %52, i32 0, i32 9
  store i32* null, i32** %53, align 8
  %54 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %55 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %54, i32 0, i32 8
  store i32* null, i32** %55, align 8
  %56 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %57 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %56, i32 0, i32 7
  store i32* null, i32** %57, align 8
  %58 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %59 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %58, i32 0, i32 6
  store i32* null, i32** %59, align 8
  %60 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %61 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %60, i32 0, i32 5
  store i32* null, i32** %61, align 8
  %62 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %63 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %62, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %65 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %67 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %69 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %71 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  ret void
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

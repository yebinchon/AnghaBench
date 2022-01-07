; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-rtrack2.c_rtrack2_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-rtrack2.c_rtrack2_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32)* @rtrack2_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtrack2_s_frequency(%struct.radio_isa_card* %0, i32 %1) #0 {
  %3 = alloca %struct.radio_isa_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sdiv i32 %6, 200
  %8 = add nsw i32 %7, 856
  store i32 %8, i32* %4, align 4
  %9 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %10 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @outb_p(i32 200, i32 %11)
  %13 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %14 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @outb_p(i32 201, i32 %15)
  %17 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %18 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @outb_p(i32 201, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %27, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %26 = call i32 @zero(%struct.radio_isa_card* %25)
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %21

30:                                               ; preds = %21
  store i32 14, i32* %5, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %42 = call i32 @one(%struct.radio_isa_card* %41)
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %45 = call i32 @zero(%struct.radio_isa_card* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %52 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @outb_p(i32 200, i32 %53)
  %55 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %56 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l2_ctrl_g_ctrl(i32 %57)
  %59 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %60 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @outb_p(i32 %58, i32 %61)
  ret i32 0
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @zero(%struct.radio_isa_card*) #1

declare dso_local i32 @one(%struct.radio_isa_card*) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

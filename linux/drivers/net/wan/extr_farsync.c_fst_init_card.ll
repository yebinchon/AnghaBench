; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Cannot register HDLC device for port %d (errno %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s-%s: %s IRQ%d, %d ports\0A\00", align 1
@type_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_card_info*)* @fst_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_init_card(%struct.fst_card_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fst_card_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %9 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  %13 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %14 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @register_hdlc_device(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %33, %24
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %35 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @unregister_hdlc_device(i32 %41)
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %12
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %6

49:                                               ; preds = %6
  %50 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %51 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = call %struct.TYPE_3__* @port_to_dev(%struct.TYPE_4__* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %58 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %61 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %64
  %66 = call %struct.TYPE_3__* @port_to_dev(%struct.TYPE_4__* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @type_strings, align 8
  %70 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %71 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %76 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %79 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %68, i32 %74, i32 %77, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %49, %43
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @register_hdlc_device(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @unregister_hdlc_device(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @port_to_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

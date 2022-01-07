; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_check_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_check_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kim_data_s = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"len %d room %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Data length is too large len %d room %d\00", align 1
@ST_W4_DATA = common dso_local global i32 0, align 4
@ST_W4_PACKET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kim_data_s*, i32)* @kim_check_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kim_check_data_len(%struct.kim_data_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kim_data_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kim_data_s* %0, %struct.kim_data_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %8 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @skb_tailroom(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %18 = call i32 @validate_firmware_response(%struct.kim_data_s* %17)
  br label %40

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %28 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree_skb(i32* %29)
  br label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @ST_W4_DATA, align 4
  %33 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %34 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %37 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* @ST_W4_PACKET_TYPE, align 4
  %42 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %43 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %45 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %47 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @skb_tailroom(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @validate_firmware_response(%struct.kim_data_s*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

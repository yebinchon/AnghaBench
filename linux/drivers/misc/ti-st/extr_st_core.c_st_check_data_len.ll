; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_check_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_check_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"len %d room %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Data length is too large len %d room %d\00", align 1
@ST_W4_DATA = common dso_local global i32 0, align 4
@ST_W4_PACKET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_data_s*, i8, i32)* @st_check_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_check_data_len(%struct.st_data_s* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_data_s*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_data_s* %0, %struct.st_data_s** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %10 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @skb_tailroom(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8, i8* %6, align 1
  %20 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %21 = call i32 @st_send_frame(i8 zeroext %19, %struct.st_data_s* %20)
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %31 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree_skb(i32* %32)
  br label %42

34:                                               ; preds = %22
  %35 = load i32, i32* @ST_W4_DATA, align 4
  %36 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %37 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %40 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* @ST_W4_PACKET_TYPE, align 4
  %45 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %46 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %48 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %50 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %52 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %34
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @skb_tailroom(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @st_send_frame(i8 zeroext, %struct.st_data_s*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

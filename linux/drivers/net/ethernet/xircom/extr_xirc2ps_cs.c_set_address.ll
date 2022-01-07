; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_address_info = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.set_address_info*, i8*)* @set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_address(%struct.set_address_info* %0, i8* %1) #0 {
  %3 = alloca %struct.set_address_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.set_address_info* %0, %struct.set_address_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %8 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %15 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 15
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %20 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %19, i32 0, i32 1
  store i32 8, i32* %20, align 4
  %21 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %22 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %26 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SelectPage(i32 %27)
  br label %29

29:                                               ; preds = %18, %13
  %30 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %31 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %36 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 5, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @PutByte(i32 %37, i8 signext %44)
  br label %57

46:                                               ; preds = %29
  %47 = load %struct.set_address_info*, %struct.set_address_info** %3, align 8
  %48 = getelementptr inbounds %struct.set_address_info, %struct.set_address_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @PutByte(i32 %49, i8 signext %55)
  br label %57

57:                                               ; preds = %46, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @PutByte(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

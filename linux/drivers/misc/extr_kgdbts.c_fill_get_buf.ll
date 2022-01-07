; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_fill_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_fill_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"get%i: %s\0A\00", align 1
@ts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fill_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_get_buf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** @get_buf, align 8
  %7 = call i32 @strcpy(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** @get_buf, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcat(i8* %8, i8* %9)
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %5, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i8*, i8** @get_buf, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8, i8* %3, align 1
  %31 = call signext i8 @hex_asc_hi(i8 zeroext %30)
  %32 = load i8*, i8** @get_buf, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %31, i8* %36, align 1
  %37 = load i8, i8* %3, align 1
  %38 = call signext i8 @hex_asc_lo(i8 zeroext %37)
  %39 = load i8*, i8** @get_buf, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load i8*, i8** @get_buf, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 4
  %50 = load i8*, i8** @get_buf, align 8
  %51 = call i32 @v2printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %49, i8* %50)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

declare dso_local i32 @v2printk(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

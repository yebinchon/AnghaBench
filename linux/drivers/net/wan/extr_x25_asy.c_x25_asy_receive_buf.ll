; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.x25_asy* }
%struct.x25_asy = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@X25_ASY_MAGIC = common dso_local global i64 0, align 8
@SLF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @x25_asy_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.x25_asy*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.x25_asy*, %struct.x25_asy** %11, align 8
  store %struct.x25_asy* %12, %struct.x25_asy** %9, align 8
  %13 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %14 = icmp ne %struct.x25_asy* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %17 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @X25_ASY_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %23 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @netif_running(%struct.TYPE_4__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %15, %4
  br label %66

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %59, %56, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load i32, i32* @SLF_ERROR, align 4
  %44 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %45 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %44, i32 0, i32 2
  %46 = call i32 @test_and_set_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %50 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %42
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %29

59:                                               ; preds = %36, %33
  %60 = load %struct.x25_asy*, %struct.x25_asy** %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 @x25_asy_unesc(%struct.x25_asy* %60, i32 %64)
  br label %29

66:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @x25_asy_unesc(%struct.x25_asy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

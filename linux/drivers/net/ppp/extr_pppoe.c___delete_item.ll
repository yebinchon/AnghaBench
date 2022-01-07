; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c___delete_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c___delete_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppoe_net = type { %struct.pppox_sock** }
%struct.pppox_sock = type { i32, %struct.pppox_sock*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pppoe_net*, i32, i8*, i32)* @__delete_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__delete_item(%struct.pppoe_net* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pppoe_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pppox_sock*, align 8
  %11 = alloca %struct.pppox_sock**, align 8
  store %struct.pppoe_net* %0, %struct.pppoe_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @hash_item(i32 %12, i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pppoe_net*, %struct.pppoe_net** %5, align 8
  %16 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %15, i32 0, i32 0
  %17 = load %struct.pppox_sock**, %struct.pppox_sock*** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %17, i64 %19
  %21 = load %struct.pppox_sock*, %struct.pppox_sock** %20, align 8
  store %struct.pppox_sock* %21, %struct.pppox_sock** %10, align 8
  %22 = load %struct.pppoe_net*, %struct.pppoe_net** %5, align 8
  %23 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %22, i32 0, i32 0
  %24 = load %struct.pppox_sock**, %struct.pppox_sock*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %24, i64 %26
  store %struct.pppox_sock** %27, %struct.pppox_sock*** %11, align 8
  br label %28

28:                                               ; preds = %49, %4
  %29 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %30 = icmp ne %struct.pppox_sock* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %33 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @cmp_addr(i32* %33, i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %40 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %46 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %45, i32 0, i32 1
  %47 = load %struct.pppox_sock*, %struct.pppox_sock** %46, align 8
  %48 = load %struct.pppox_sock**, %struct.pppox_sock*** %11, align 8
  store %struct.pppox_sock* %47, %struct.pppox_sock** %48, align 8
  br label %55

49:                                               ; preds = %38, %31
  %50 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %51 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %50, i32 0, i32 1
  store %struct.pppox_sock** %51, %struct.pppox_sock*** %11, align 8
  %52 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %53 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %52, i32 0, i32 1
  %54 = load %struct.pppox_sock*, %struct.pppox_sock** %53, align 8
  store %struct.pppox_sock* %54, %struct.pppox_sock** %10, align 8
  br label %28

55:                                               ; preds = %44, %28
  ret void
}

declare dso_local i32 @hash_item(i32, i8*) #1

declare dso_local i64 @cmp_addr(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

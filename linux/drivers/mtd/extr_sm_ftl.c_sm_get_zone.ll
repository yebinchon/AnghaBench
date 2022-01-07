; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_get_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_get_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_zone = type { i32 }
%struct.sm_ftl = type { i32, %struct.ftl_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ftl_zone* (%struct.sm_ftl*, i32)* @sm_get_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ftl_zone* @sm_get_zone(%struct.sm_ftl* %0, i32 %1) #0 {
  %3 = alloca %struct.ftl_zone*, align 8
  %4 = alloca %struct.sm_ftl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftl_zone*, align 8
  %7 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %10 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %16 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %15, i32 0, i32 1
  %17 = load %struct.ftl_zone*, %struct.ftl_zone** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %17, i64 %19
  store %struct.ftl_zone* %20, %struct.ftl_zone** %6, align 8
  %21 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %22 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %2
  %26 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sm_init_zone(%struct.sm_ftl* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.ftl_zone* @ERR_PTR(i32 %32)
  store %struct.ftl_zone* %33, %struct.ftl_zone** %3, align 8
  br label %37

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  store %struct.ftl_zone* %36, %struct.ftl_zone** %3, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.ftl_zone*, %struct.ftl_zone** %3, align 8
  ret %struct.ftl_zone* %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sm_init_zone(%struct.sm_ftl*, i32) #1

declare dso_local %struct.ftl_zone* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.rave_sp*, %struct.rave_sp_status*)* }
%struct.rave_sp_status = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rave_sp*)* @rave_sp_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_get_status(%struct.rave_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rave_sp*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rave_sp_status, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rave_sp* %0, %struct.rave_sp** %3, align 8
  %8 = load %struct.rave_sp*, %struct.rave_sp** %3, align 8
  %9 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.rave_sp*, %struct.rave_sp** %3, align 8
  %13 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (%struct.rave_sp*, %struct.rave_sp_status*)*, i32 (%struct.rave_sp*, %struct.rave_sp_status*)** %16, align 8
  %18 = load %struct.rave_sp*, %struct.rave_sp** %3, align 8
  %19 = call i32 %17(%struct.rave_sp* %18, %struct.rave_sp_status* %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.rave_sp_status, %struct.rave_sp_status* %5, i32 0, i32 1
  %27 = call i8* @devm_rave_sp_version(%struct.device* %25, i32* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.rave_sp*, %struct.rave_sp** %3, align 8
  %36 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.rave_sp_status, %struct.rave_sp_status* %5, i32 0, i32 0
  %39 = call i8* @devm_rave_sp_version(%struct.device* %37, i32* %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.rave_sp*, %struct.rave_sp** %3, align 8
  %48 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %42, %30, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8* @devm_rave_sp_version(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

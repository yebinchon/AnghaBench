; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_check_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_check_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ionic_admin_ctx = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s (%d) failed: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*, %struct.ionic_admin_ctx*, i32)* @ionic_adminq_check_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_adminq_check_err(%struct.ionic_lif* %0, %struct.ionic_admin_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.ionic_lif*, align 8
  %5 = alloca %struct.ionic_admin_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %4, align 8
  store %struct.ionic_admin_ctx* %1, %struct.ionic_admin_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %12 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %20, %3
  %24 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @ionic_opcode_to_str(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @ionic_error_to_str(i64 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  br label %48

41:                                               ; preds = %23
  %42 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ionic_error_to_errno(i64 %46)
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i32 [ %40, %38 ], [ %47, %41 ]
  store i32 %49, i32* %10, align 4
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %9, align 8
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %59 ], [ %61, %60 ]
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %56, i8* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %70 = call i32 @ionic_adminq_flush(%struct.ionic_lif* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i8* @ionic_opcode_to_str(i32) #1

declare dso_local i8* @ionic_error_to_str(i64) #1

declare dso_local i32 @ionic_error_to_errno(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ionic_adminq_flush(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

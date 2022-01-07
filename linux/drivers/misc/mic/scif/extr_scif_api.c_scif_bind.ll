; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.scif_endpt = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@scif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"SCIFAPI bind: ep %p %s requested port number %d\0A\00", align 1
@scif_ep_states = common dso_local global i32* null, align 8
@SCIF_ADMIN_PORT_END = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SCIFEP_BOUND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCIFEP_UNBOUND = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@ASYNC_CONN_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SCIFAPI bind: bound to port number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_bind(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.scif_endpt*
  store %struct.scif_endpt* %9, %struct.scif_endpt** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0, i32 0), align 4
  %11 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %12 = load i32*, i32** @scif_ep_states, align 8
  %13 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %14 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %11, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SCIF_ADMIN_PORT_END, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %99

33:                                               ; preds = %26, %22
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %36 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %39 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SCIFEP_BOUND, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %95

46:                                               ; preds = %34
  %47 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %48 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SCIFEP_UNBOUND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EISCONN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %95

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @scif_rsrv_port(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %95

68:                                               ; preds = %59
  br label %76

69:                                               ; preds = %56
  %70 = call i32 (...) @scif_get_new_port()
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %95

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i64, i64* @SCIFEP_BOUND, align 8
  %78 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %79 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 1), align 4
  %81 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %82 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %86 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @ASYNC_CONN_IDLE, align 4
  %89 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %90 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0, i32 0), align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %76, %73, %65, %52, %43
  %96 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %97 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %30
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_rsrv_port(i32) #1

declare dso_local i32 @scif_get_new_port(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

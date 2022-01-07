; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.h_i40e_aq_rc_to_posix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.h_i40e_aq_rc_to_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @i40e_aq_rc_to_posix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_aq_rc_to_posix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [23 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [23 x i32], [23 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load i32, i32* @ESRCH, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds i32, i32* %17, i64 1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds i32, i32* %20, i64 1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds i32, i32* %23, i64 1
  %27 = load i32, i32* @E2BIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds i32, i32* %26, i64 1
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds i32, i32* %29, i64 1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds i32, i32* %32, i64 1
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds i32, i32* %35, i64 1
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds i32, i32* %38, i64 1
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds i32, i32* %41, i64 1
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds i32, i32* %44, i64 1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds i32, i32* %47, i64 1
  %51 = load i32, i32* @ENOTTY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds i32, i32* %50, i64 1
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %53, align 4
  %56 = getelementptr inbounds i32, i32* %53, i64 1
  %57 = load i32, i32* @ENOSYS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %56, align 4
  %59 = getelementptr inbounds i32, i32* %56, i64 1
  %60 = load i32, i32* @ERANGE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds i32, i32* %59, i64 1
  %63 = load i32, i32* @EPIPE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %62, align 4
  %65 = getelementptr inbounds i32, i32* %62, i64 1
  %66 = load i32, i32* @ESPIPE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds i32, i32* %65, i64 1
  %69 = load i32, i32* @EROFS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds i32, i32* %68, i64 1
  %72 = load i32, i32* @EFBIG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_TIMEOUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %2
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %2
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 23
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @ERANGE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %92

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [23 x i32], [23 x i32]* %6, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %84, %77
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

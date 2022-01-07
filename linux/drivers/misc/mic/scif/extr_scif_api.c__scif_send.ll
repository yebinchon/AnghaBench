; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c__scif_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c__scif_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scif_qp* }
%struct.scif_qp = type { i32 }
%struct.scifmsg = type { i32*, i32, i32 }

@SCIF_SEND_BLOCK = common dso_local global i32 0, align 4
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIF_CLIENT_SENT = common dso_local global i32 0, align 4
@SCIF_ENDPT_QP_SIZE = common dso_local global i32 0, align 4
@SCIFEP_DISCONNECTED = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32)* @_scif_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_send(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scif_endpt*, align 8
  %10 = alloca %struct.scifmsg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scif_qp*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to %struct.scif_endpt*
  store %struct.scif_endpt* %17, %struct.scif_endpt** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scif_qp*, %struct.scif_qp** %20, align 8
  store %struct.scif_qp* %21, %struct.scif_qp** %15, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SCIF_SEND_BLOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 (...) @might_sleep()
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %30 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  br label %32

32:                                               ; preds = %135, %87, %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %38 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %39 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br i1 %43, label %44, label %136

44:                                               ; preds = %42
  %45 = load %struct.scif_qp*, %struct.scif_qp** %15, align 8
  %46 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %45, i32 0, i32 0
  %47 = call i32 @scif_rb_space(i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.scif_qp*, %struct.scif_qp** %15, align 8
  %57 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %56, i32 0, i32 0
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @scif_rb_write(i32* %57, i8* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %136

64:                                               ; preds = %50
  %65 = load %struct.scif_qp*, %struct.scif_qp** %15, align 8
  %66 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %65, i32 0, i32 0
  %67 = call i32 @scif_rb_commit(i32* %66)
  %68 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %69 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @SCIF_CLIENT_SENT, align 4
  %73 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %75 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %81 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @_scif_nodeqp_send(i32 %82, %struct.scifmsg* %10)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  br label %136

87:                                               ; preds = %64
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %91, i64 %93
  store i8* %94, i8** %6, align 8
  br label %32

95:                                               ; preds = %44
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @SCIF_ENDPT_QP_SIZE, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @min(i32 %98, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @SCIF_SEND_BLOCK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %95
  br label %136

107:                                              ; preds = %95
  %108 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %109 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %112 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %115 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %116 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %107
  %120 = load %struct.scif_qp*, %struct.scif_qp** %15, align 8
  %121 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %120, i32 0, i32 0
  %122 = call i32 @scif_rb_space(i32* %121)
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %122, %123
  br label %125

125:                                              ; preds = %119, %107
  %126 = phi i1 [ true, %107 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @wait_event_interruptible(i32 %113, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %130 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %129, i32 0, i32 1
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %136

135:                                              ; preds = %125
  br label %32

136:                                              ; preds = %134, %106, %86, %63, %42
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %14, align 4
  br label %165

141:                                              ; preds = %136
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %164, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %146 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %147 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %144
  %151 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %152 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %153 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* @ECONNRESET, align 4
  %158 = sub nsw i32 0, %157
  br label %162

159:                                              ; preds = %150
  %160 = load i32, i32* @ENOTCONN, align 4
  %161 = sub nsw i32 0, %160
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i32 [ %158, %156 ], [ %161, %159 ]
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %162, %144, %141
  br label %165

165:                                              ; preds = %164, %139
  %166 = load %struct.scif_endpt*, %struct.scif_endpt** %9, align 8
  %167 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %166, i32 0, i32 1
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i32, i32* %14, align 4
  ret i32 %169
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_rb_space(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scif_rb_write(i32*, i8*, i32) #1

declare dso_local i32 @scif_rb_commit(i32*) #1

declare dso_local i32 @_scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
